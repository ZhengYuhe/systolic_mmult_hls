/*******************************************************************************
Vendor: Xilinx
Associated Filename: krnl_vadd.cpp
Purpose: Vitis vector addition example
*******************************************************************************
Copyright (C) 2019 XILINX, Inc.

This file contains confidential and proprietary information of Xilinx, Inc. and
is protected under U.S. and international copyright and other intellectual
property laws.

DISCLAIMER
This disclaimer is not a license and does not grant any rights to the materials
distributed herewith. Except as otherwise provided in a valid license issued to
you by Xilinx, and to the maximum extent permitted by applicable law:
(1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX
HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR
FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether
in contract or tort, including negligence, or under any other theory of
liability) for any loss or damage of any kind or nature related to, arising under
or in connection with these materials, including for any direct, or any indirect,
special, incidental, or consequential loss or damage (including loss of data,
profits, goodwill, or any type of loss or damage suffered as a result of any
action brought by a third party) even if such damage or loss was reasonably
foreseeable or Xilinx had been advised of the possibility of the same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-safe, or for use in any
application requiring fail-safe performance, such as life-support or safety
devices or systems, Class III medical devices, nuclear facilities, applications
related to the deployment of airbags, or any other applications that could lead
to death, personal injury, or severe property or environmental damage
(individually and collectively, "Critical Applications"). Customer assumes the
sole risk and liability of any use of Xilinx products in Critical Applications,
subject only to applicable laws and regulations governing limitations on product
liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT
ALL TIMES.

*******************************************************************************/

//------------------------------------------------------------------------------
//
// kernel:  vadd
//
// Purpose: Demonstrate Vector Add Kernel
//

//#define BUFFER_SIZE 256
//#define DATA_SIZE 4096 
////TRIPCOUNT identifier
//const unsigned int c_len = DATA_SIZE / BUFFER_SIZE;
//const unsigned int c_size = BUFFER_SIZE;

/*
    Vector Addition Kernel Implementation 
    Arguments:
        in1   (input)     --> Input Vector1
        in2   (input)     --> Input Vector2
        out_r   (output)    --> Output Vector
        size  (input)     --> Size of Vector in Integer

    extern "C" {
    void krnl_vadd(const unsigned int *in1, // Read-Only Vector 1
          const unsigned int *in2, // Read-Only Vector 2
          unsigned int *out_r,     // Output Result
          int size                 // Size in integer
    ) {

    unsigned int v1_buffer[BUFFER_SIZE];   // Local memory to store vector1

    //Per iteration of this loop perform BUFFER_SIZE vector addition
    for (int i = 0; i < size; i += BUFFER_SIZE) {
       #pragma HLS LOOP_TRIPCOUNT min=c_len max=c_len
        int chunk_size = BUFFER_SIZE;
        //boundary checks
        if ((i + BUFFER_SIZE) > size)
            chunk_size = size - i;

        read1: for (int j = 0; j < chunk_size; j++) {
           #pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
            v1_buffer[j] = in1[i + j];
        }

        //Burst reading B and calculating C and Burst writing 
        // to  Global memory
        vadd_writeC: for (int j = 0; j < chunk_size; j++) {
           #pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
            //perform vector addition
            out_r[i+j] = v1_buffer[j] + in2[i+j];
        }

    }
    }
    }
*/
/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

/*******************************************************************************

Vitis Key Concept :

    This is a matrix multiplication example which showcases the "Systolic Array"
    based algorithm design. Systolic array type of implementation is well suited
    for FPGAs.

*******************************************************************************/

/*

Kernel Description :

    This kernel is a systolic array based matrix multiplication. Though the
    maximum size of the input matrices are restricted to a smaller TILE_SIZE, it
    is still possible to use this approach and get better performance for larger
    matrices by using tiling.

    Arguments :

        int *a     (input )  --> Input  Matrix A
        int *b     (input )  --> Input  Matrix B
        int *c     (output)  --> Output Matrix
        int  a_row (input )  --> Row Size Matrix A
        int  a_col (input )  --> Col Size Matrix A
        int  b_col (input )  --> Col Size Matrix B

   */

#include <stdio.h>

#define DATA_SIZE 8
#define CHUNK_SIZE_A 4
#define CHUNK_SIZE_B 4
#define TILE_SIZE 2
#define LAYERS 3
#define DIM_K ((DATA_SIZE + (DATA_SIZE % LAYERS)) / LAYERS)
#define TILES_IN_CHUNK_A (CHUNK_SIZE_A / TILE_SIZE) // CHUNK must be multiple of TILE_SIZE
#define TILES_IN_CHUNK_B (CHUNK_SIZE_B / TILE_SIZE)


#define OVERRUN_IDX_A (DATA_SIZE-CHUNK_SIZE_A)
#define OVERRUN_IDX_B (DATA_SIZE-CHUNK_SIZE_B)


#define MIN(a,b) (((a) < (b)) ? (a) : (b))

extern "C" {
void krnl_mmult(const int* a, // Read-Only Matrix A
           const int* b, // Read-Only Matrix B
           int* c,       // Output Result
           int a_col, int a_row, int b_col) {

    
    // Local memory to store input and output matrices
    int localA[TILES_IN_CHUNK_A][LAYERS][TILE_SIZE][DIM_K];
    #pragma HLS ARRAY_PARTITION variable = localA dim = 1 complete
    #pragma HLS ARRAY_PARTITION variable = localA dim = 2 complete
    #pragma HLS ARRAY_PARTITION variable = localA dim = 3 complete
    //#pragma HLS ARRAY_PARTITION variable=localA dim =2 factor=2 type=cyclic
    
    int localB[TILES_IN_CHUNK_B][LAYERS][DIM_K][TILE_SIZE];
    #pragma HLS ARRAY_PARTITION variable = localB dim = 1 complete
    #pragma HLS ARRAY_PARTITION variable = localB dim = 2 complete
    #pragma HLS ARRAY_PARTITION variable = localB dim = 4 complete

    int localC[TILE_SIZE][TILE_SIZE];
    #pragma HLS ARRAY_PARTITION variable = localC dim = 0 complete

    int bufC[LAYERS][TILE_SIZE][TILE_SIZE];
    #pragma HLS ARRAY_PARTITION variable = bufC dim = 0 complete

    int bufA[LAYERS][TILE_SIZE][TILE_SIZE];
    #pragma HLS ARRAY_PARTITION variable = bufA dim = 0 complete

    int bufB[LAYERS][TILE_SIZE][TILE_SIZE];
    #pragma HLS ARRAY_PARTITION variable = bufB dim = 0 complete    
    
    int r1;
    int c1;

    PaddA:
    for (int t = 0; t < TILES_IN_CHUNK_A; t++){
        
        for (int i = 0; i < TILE_SIZE; i ++){
            
            for (int l = 0; l < LAYERS; l ++){
                
                for (int k = 0; k < DIM_K; k ++){
                    localA[t][l][i][k] = 0;
                }
            }
        }
    }

    PaddB:
    for (int t = 0; t < TILES_IN_CHUNK_B; t++){
        
        for (int j = 0; j < TILE_SIZE; j ++){
            
            for (int l = 0; l < LAYERS; l ++){
                
                for (int k = 0; k < DIM_K; k ++){
                    localB[t][l][k][j] = 0;
                }
            }
        }
    }

    Loop_r0:
    for (int r0 = 0; r0 < DATA_SIZE; r0 += CHUNK_SIZE_A){

        r1 = MIN(r0, OVERRUN_IDX_A);
        
        
        /*
        
        for (int t = 0; t < TILES_IN_CHUNK_A; t++){
            readA_tile:
            for (int i = 0; i < TILE_SIZE; i ++){
                readA_layer:
                for (int l = 0; l < LAYERS; l ++){
                    readA_k:
                    for (int k = 0; k < DIM_K; k ++){
                        localA[t][l][i][k] = a[(r1 + t * TILE_SIZE + i) * DATA_SIZE + l * DIM_K + k];
                    }
                }
            }
        }
        */
        readA_chunk:
        for (int t = 0; t < TILES_IN_CHUNK_B; t++){
            readA_tile:
            for (int i = 0; i < TILE_SIZE; i ++){
                readA_col:
                for (int c = 0; c < DATA_SIZE; c ++){
                    localA[t][c/DIM_K][i][c%DIM_K] = a[(r1 + t*TILE_SIZE + i)*DATA_SIZE + c];
                }
            }
            
        }

        Loop_c0:
        for (int c0 = 0; c0 < DATA_SIZE; c0 += CHUNK_SIZE_B){
            
            c1 = MIN(c0, OVERRUN_IDX_B);
            /*
            readB_chunk:
            for (int t = 0; t < TILES_IN_CHUNK_B; t++){
                readB_tile:
                for (int j = 0; j < TILE_SIZE; j ++){
                    readB_layer:
                    for (int l = 0; l < LAYERS; l ++){
                        readB_k:
                        for (int k = 0; k < DIM_K; k ++){
                            localB[t][l][k][j] = b[(c1 + t * TILE_SIZE + j) * DATA_SIZE + l * DIM_K + k];
                        }
                    }
                }
            }
            */

            readB_chunk:
            for (int t = 0; t < TILES_IN_CHUNK_A; t++){
                readB_tile:
                for (int j = 0; j < TILE_SIZE; j ++){
                    readB_col:
                    for (int r = 0; r < DATA_SIZE; r ++){
                        localB[t][r/DIM_K][r%DIM_K][j] = b[(c1 + t*TILE_SIZE + j)*DATA_SIZE + r];
                    }
                }
                
            }
            

            loop_tr:
            for (int tr = 0; tr < TILES_IN_CHUNK_A; tr ++){
                loop_tc:
                for (int tc = 0; tc < TILES_IN_CHUNK_B; tc ++ ){

                    fill_PE:
                    for (int l = 0; l < LAYERS; l++){
                        #pragma HLS UNROLL
                        fill_PE_i:
                        for(int i = 0; i < TILE_SIZE; i++){
                            #pragma HLS UNROLL
                            fill_PE_j:
                            for (int j = 0; j < TILE_SIZE; j++){
                                #pragma HLS UNROLL
                                bufC[l][i][j] = 0;
                                bufA[l][i][j] = 0;
                                bufB[l][i][j] = 0;
                            }
                        }
                    }

                    fill_localC:
                    for (int i = 0; i < TILE_SIZE; i++){
                        fill_localC_inner:
                        for (int j = 0; j < TILE_SIZE; j++){
                            localC[i][j] = 0;
                        }
                    }

                    systolick:
                    for (int k = 0; k < (2*TILE_SIZE + DIM_K -1); k ++) {
                    #pragma HLS pipeline
                        systolict:
                        for (int l = 0; l < LAYERS; l ++){
                            systolici:
                            for (int i = TILE_SIZE-1; i >= 0; i--) {
                                systolicj:
                                for (int j = TILE_SIZE-1; j >= 0; j--) {
                                    if((i+j<=k)&&(k<i+j+DIM_K)){
                                        bufA[l][i][j] = (j > 0) ? bufA[l][i][j-1] : localA[tr][l][i][k - i];
                                        bufB[l][i][j] = (i > 0) ? bufB[l][i-1][j] : localB[tc][l][k - j][j];
                                        bufC[l][i][j] += bufA[l][i][j] * bufB[l][i][j];
                                    }
                                }
                            }
                        }
                        
                    }


                    Accum_C:
                    for (int l = 0; l < LAYERS; l++){
                        #pragma HLS pipeline
                        Accum_C_i:
                        for (int i = 0; i < TILE_SIZE; i++){
                            Accum_C_j:
                            for (int j = 0; j < TILE_SIZE; j++){
                                localC[i][j] += bufC[l][i][j];
                            }
                        }
                    }

                    writeC:
                    for (int i = 0; i < TILE_SIZE; i ++ ){
                        writeC_inner:
                        for (int j = 0; j < TILE_SIZE; j ++){
                            c[(r1 + tr * TILE_SIZE + i) * DATA_SIZE + c1 + tc * TILE_SIZE + j] = localC[i][j];
                        }
                    }

                }

            }


        }

    }

}
}
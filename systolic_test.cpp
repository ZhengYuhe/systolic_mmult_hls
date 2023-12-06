#include "systolic_test.h"
#include <vector>

// Array Size to access
#define DATA_SIZE 64



// Software implementation of Matrix Multiplication
// The inputs are of the size (DATA_SIZE x DATA_SIZE)
void m_softwareGold(int *in1, // Input Matrix 1
                    int *in2, // Input Matrix 2
                    int *out  // Output Matrix
                    ) {
    // Perform Matrix multiply Out = In1 x In2
    for (int i = 0; i < DATA_SIZE; i++){
        for (int j = 0; j < DATA_SIZE; j++){
            for (int k = 0; k < DATA_SIZE; k++){
                out[i * DATA_SIZE + j] += in1[i * DATA_SIZE + k] * in2[j * DATA_SIZE + k];
            }
        }
    }
}

int main() {
    
    int matrix_size = DATA_SIZE * DATA_SIZE;
    
    int *source_in1 = new int[matrix_size];
    int *source_in2 = new int[matrix_size];
    int *source_hw_results = new int[matrix_size];
    int *source_sw_results = new int[matrix_size];

    if (source_in1 == NULL){
        printf("Error allocating source_in1\n");
        exit(EXIT_FAILURE);
    }

    if (source_in2 == NULL){
        printf("Error allocating source_in2\n");
        exit(EXIT_FAILURE);
    }

    if (source_hw_results == NULL){
        printf("Error allocating source_hw_results\n");
        exit(EXIT_FAILURE);
    }

    if (source_sw_results == NULL){
        printf("Error allocating source_sw_results\n");
        exit(EXIT_FAILURE);
    }

    

    // Create the test data and Software Result
    for (int i = 0; i < matrix_size; i++) {
        source_in1[i] = i % 10;
        source_in2[i] = i % 10;
        source_sw_results[i] = 0;
        source_hw_results[i] = 0;
    }

    int a_row = DATA_SIZE;
    int a_col = DATA_SIZE;
    int b_col = DATA_SIZE;

    std::cout << "starting krnl_mmult" << std::endl;
    krnl_mmult(source_in1, source_in2, source_hw_results, a_row, a_col, b_col);
    std::cout << "finished krnl_mmult" << std::endl;

    std::cout << "starting sw_mmult" << std::endl;
    m_softwareGold(source_in1, source_in2, source_sw_results);
    std::cout << "finished sw_mmult" << std::endl;

    // Compare the results of the Device to the simulation

    std::cout << "start compare:" << std::endl;
    int match = 0;
    for (int i = 0; i < DATA_SIZE * DATA_SIZE; i++) {
        if (source_hw_results[i] != source_sw_results[i]) {
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_results[i]
                      << " Device result = " << source_hw_results[i] << std::endl;
            match = 1;
            break;
        }
    }


    // std::cout << "printing sw gold" << std::endl;
    // for (int i = 0; i < DATA_SIZE; i++){
    //     for (int j = 0; j < DATA_SIZE; j ++ ){
    //         std::cout << source_sw_results[i * DATA_SIZE + j] << "  ";
    //     }
    //     std::cout << std::endl;
    // }

    // std::cout << std::endl;
    // std::cout << std::endl;

    // std::cout << "printing hw result" << std::endl;
    // for (int i = 0; i < DATA_SIZE; i++){
    //     for (int j = 0; j < DATA_SIZE; j ++ ){
    //         std::cout << source_hw_results[i * DATA_SIZE + j]  << "  ";
    //     }
    //     std::cout << std::endl;
    // }




    delete[] source_in1;
    delete[] source_in2;
    delete[] source_hw_results;
    delete[] source_sw_results;

    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
    return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
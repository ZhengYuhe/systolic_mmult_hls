#pragma once
#include <stdlib.h>
#include <iostream>
extern "C"
{
  
  void krnl_mmult(const int* a, // Read-Only Matrix A
           const int* b, // Read-Only Matrix B
           int* c,       // Output Result
           int a_row,    // Matrix A Row Size
           int a_col,    // Matrix A Col Size
           int b_col     // Matrix B Col Size
           );

}
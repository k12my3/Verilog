`timescale 1ns / 1ps
module DynArrayEx;

module dynamic_array;
  
  //dynamic array declaration
  bit [7:0]  d_array1[];
  int       d_array2[];
 
  initial begin
    $display("Before Memory Allocation");
    $display("\tSize of d_array1 %d",d_array1.size());
    $display("\tSize of d_array2 %0d",d_array2.size());
 
    //memory allocation
    d_array1 = new[4]; 
    d_array2 = new[6]; 
    
    $display("After Memory Allocation");
    $display("\tSize of d_array1 %0d",d_array1.size());
    $display("\tSize of d_array2 %0d",d_array2.size());
    
    //array initialization
    d_array1 = {0,1,2,3};
    foreach(d_array2[j])  d_array2[j] = j;
 
    $display("--- d_array1 Values are ---");
    foreach(d_array1[i])   $display("\td_aaray1[%0d] = %0d",i, d_array1[i]);
    $display("---------------------------------");
 
    $display("--- d_array2 Values are ---");
    foreach(d_array2[i])   $display("\td_aaray2[%0d] = %0d",i, d_array2[i]);
    $display("---------------------------------");
    
    //Increasing the size by retaining the old values
    d_array2 = new[10](d_array2); //Create dynamic array of 5 elements, retaining old values
    $display("Size of Array d_array2 %0d",d_array2.size());
    $display("----- d_array2 Values are -----");
    foreach(d_array2[i])   $display("\td_aaray2[%0d] = %0d",i, d_array2[i]);
    
    //delete array
    d_array1.delete;
    d_array2.delete;
     
    $display("After Array Delete");
    $display("\tSize of d_array1 %0d",d_array1.size());
    $display("\tSize of d_array2 %0d",d_array2.size());
  end
 
endmodule

endmodule

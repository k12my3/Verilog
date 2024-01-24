`timescale 1ns / 1ps
module ArrayEx; //- static array

int arr1[6] = '{0,1,2,3,4,5}; //single fxed 1d ~ arr1[0:5]
int arr2[5:0] = '{0,1,2,3,4,5};
int arr3[2:0][3:0] = '{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
int arr4[4:0];

initial begin
    $display("Array-1-----");
    foreach(arr1[i])
        $display("\tArr1[%0d] = %0d", i, arr1[i]);
    $display("Array-2-----");
    for(int i=0; i<6; i++)
        $display("\tArr2[%0d] = %0d", i, arr2[i]);
    $display("Array-3-----");
    foreach(arr3[i,j])
        $display("\tArr3[%0d][%0d] = %0d", i, j, arr3[i][j]);
    $display("Uninitialised Array-4-----");
    foreach(arr4[i])
        $display("\tArr4[%0d] = %0d", i, arr4[i]);
end

endmodule

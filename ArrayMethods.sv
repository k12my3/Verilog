`timescale 1ns / 1ps
module ArrayMethods;

  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};
  int res[$];
  //_______//
  int aa[int];
  //_______//
  initial begin
    res = array.find(x) with (x > 3);
    $display ("find(x)         : %p", res);
    
    res = array.find_index with (item == 3);
    $display ("find_index      : res=%p", res);
    
    res = array.find_first with (item < 5 & item >= 3);
    $display ("find_first      : %p", res);
    
    res = array.find_first_index(x) with (x > 5);
    $display ("find_first_index: %p", res);
    
    res = array.find_last with (item <= 7 & item > 3);
    $display ("find_last       : %p", res);
    
    res = array.find_last_index(x) with (x < 3);
    $display ("find_last_index : %p", res);
    
    res = array.min();
    $display ("min          : %p", res);
    
    res = array.max();
    $display ("max          : %p", res);
    
    res = array.unique();
    $display ("unique       : %p", res);
    
    //_________//
    res = array.find_index() with (item >3);
    $display("indices  with > 3 condition are %p", res);
    foreach(res[idx]) aa[res[idx]] = array[res[idx]];
    $display("indices  with > 3 condition are %p", aa);
  res = aa.unique_index();
    $display("unique indices  with > 3 condition are %p", res);
  //________//
  end

endmodule
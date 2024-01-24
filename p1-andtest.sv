`include "p1-and.sv"

module andtest();

    reg a,b;
    wire y;
    and1 t1(y,a,b);

    initial 
    begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
        #5; a=1'b0; b=1'b0;
        #5; a=1'b0; b=1'b1;
        #5; a=1'b1; b=1'b0;
        #5; a=1'b1; b=1'b1;    
    end
endmodule
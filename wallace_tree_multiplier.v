`timescale 1ns / 1ps


module wallace_tree_mulitplier(
a,b,out
    );
    input [7:0]a,b;
    output [16:0]out;
    wire [49:1]s;
    wire [49:1]c;
    
    wire [15:0]term1;
    wire [15:0]term2;
    ha ha1(.a(b[0]&a[2]),.b(b[1]&a[1]), .s(s[1]),.cout(c[1]));
    
	fa fa1(.a(b[0]&a[3]),.b(b[1]&a[2]),.cin(b[2]&a[1]),.s(s[2]),.cout(c[2]));
    
	fa fa2(.a(b[0]&a[4]),.b(b[1]&a[3]),.cin(b[2]&a[2]),.s(s[3]),.cout(c[3]));
	ha ha2(.a(b[3]&a[1]),.b(b[4]&a[0]), .s(s[4]),.cout(c[4]));
    
	fa fa3(.a(b[0]&a[5]),.b(b[1]&a[4]),.cin(b[2]&a[3]),.s(s[5]),.cout(c[5]));
    fa fa4(.a(b[3]&a[2]),.b(b[4]&a[1]),.cin(b[5]&a[0]),.s(s[6]),.cout(c[6]));
    
	fa fa5(.a(b[0]&a[6]),.b(b[1]&a[5]),.cin(b[2]&a[4]),.s(s[7]),.cout(c[7]));
    fa fa6(.a(b[3]&a[3]),.b(b[4]&a[2]),.cin(b[5]&a[1]),.s(s[8]),.cout(c[8]));
    
	fa fa7(.a(b[0]&a[7]),.b(b[1]&a[6]),.cin(b[2]&a[5]),.s(s[9]),.cout(c[9]));
    fa fa8(.a(b[3]&a[4]),.b(b[4]&a[3]),.cin(b[5]&a[2]),.s(s[10]),.cout(c[10]));       //b[4]&a[3]
    ha ha3(.a(b[6]&a[1]),.b(b[7]&a[0]), .s(s[11]),.cout(c[11]));
    
	fa fa9(.a(b[1]&a[7]),.b(b[2]&a[6]),.cin(b[3]&a[5]),.s(s[12]),.cout(c[12]));
    fa fa10(.a(b[4]&a[4]),.b(b[5]&a[3]),.cin(b[6]&a[2]),.s(s[13]),.cout(c[13]));
    
	fa fa11(.a(b[2]&a[7]),.b(b[3]&a[6]),.cin(b[4]&a[5]),.s(s[14]),.cout(c[14]));
	fa fa12(.a(b[5]&a[4]),.b(b[6]&a[3]),.cin(b[7]&a[2]),.s(s[15]),.cout(c[15]));
	
    fa fa13(.a(b[3]&a[7]),.b(b[4]&a[6]),.cin(b[5]&a[5]),.s(s[16]),.cout(c[16]));
    ha ha4(.a(b[6]&a[4]),.b(b[7]&a[3]), .s(s[17]),.cout(c[17]));
    
	fa fa14(.a(b[4]&a[7]),.b(b[5]&a[6]),.cin(b[6]&a[5]),.s(s[18]),.cout(c[18]));
    
	ha ha5(.a(b[5]&a[7]),.b(b[6]&a[6]), .s(s[19]),.cout(c[19]));
    // first step end 
    
	
    ha ha6(.a(s[2]),.b(c[1]), .s(s[20]),.cout(c[20]));
    
	ha ha7(.a(s[3]),.b(c[2]), .s(s[21]),.cout(c[21]));
    
	fa fa15(.a(s[5]),.b(c[3]),.cin(c[4]),.s(s[22]),.cout(c[22]));
    
	fa fa16(.a(s[7]),.b(c[5]),.cin(c[6]),.s(s[23]),.cout(c[23]));
    ha ha8(.a(s[8]),.b(b[6]&a[0]), .s(s[24]),.cout(c[24]));
    
	fa fa17(.a(s[9]),.b(c[7]),.cin(c[8]),.s(s[25]),.cout(c[25]));
    ha ha9(.a(s[10]),.b(s[11]), .s(s[26]),.cout(c[26]));
    
	fa fa18(.a(s[12]),.b(c[9]),.cin(c[10]),.s(s[27]),.cout(c[27]));
    fa fa19(.a(s[13]),.b(c[11]),.cin(b[7]&a[1]),.s(s[28]),.cout(c[28]));             
    
	fa fa20(.a(s[14]),.b(c[12]),.cin(c[13]),.s(s[29]),.cout(c[29]));
	
    fa fa21(.a(s[16]),.b(c[14]),.cin(c[15]),.s(s[30]),.cout(c[30]));
    
	fa fa22(.a(s[18]),.b(c[16]),.cin(c[17]),.s(s[31]),.cout(c[31]));  
	
	ha ha10(.a(s[19]),.b(c[18]), .s(s[32]),.cout(c[32]));
	
	ha ha20(.a(b[6]&a[7]),.b(b[7]&a[6]), .s(s[33]),.cout(c[33]));   
    //second step end
    
 //   ha ha11(.a(s[4]),.b(s[21]), .s(s[33]),.cout(c[33]));        
 //                           //c[20]
  //  fa fa23(.a(s[22]),.b(c[4]),.cin(c[21]),.s(s[34]),.cout(c[34]));
    
    ha ha24(.a(s[23]),.b(c[22]),.s(s[34]),.cout(c[34]));
    
    fa fa25(.a(s[25]),.b(c[24]),.cin(c[23]),.s(s[35]),.cout(c[35]));
    
    fa fa26(.a(s[27]),.b(c[26]),.cin(c[25]),.s(s[36]),.cout(c[36]));
    
    fa fa27(.a(s[29]),.b(c[28]),.cin(c[27]),.s(s[37]),.cout(c[37]));
    
    ha ha21(.a(s[30]),.b(c[29]),.s(s[38]),.cout(c[38]));
    
    ha ha12(.a(s[31]),.b(c[30]),.s(s[39]),.cout(c[39]));
    
    ha ha13(.a(s[32]),.b(c[31]),.s(s[40]),.cout(c[40]));
    
    ha ha22(.a(s[33]),.b(c[32]),.s(s[41]),.cout(c[41]));
    
   // ha ha12(.a(b[6]&a[7]),.b(b[7]&a[6]),.s(s[42]),.cout(c[42]));
    // third step end


   ha ha14(.a(s[35]),.b(c[34]),.s(s[42]),.cout(c[42]));
 
   fa fa31(.a(s[36]),.b(c[35]),.cin(s[28]),.s(s[43]),.cout(c[43]));
   
//   fa fa32(.a(s[36]),.b(c[24]),.cin(c[35]),.s(s[44]),.cout(c[44]));
   
   fa fa33(.a(s[37]),.b(s[15]),.cin(c[36]),.s(s[44]),.cout(c[44]));

 fa fa34(.a(s[38]),.b(s[17]),.cin(c[37]),.s(s[45]),.cout(c[45]));
 
 fa fa35(.a(s[39]),.b(c[38]),.cin(b[7]&a[4]),.s(s[46]),.cout(c[46]));

 fa fa36(.a(s[40]),.b(b[7]&a[5]),.cin(c[39]),.s(s[47]),.cout(c[47]));
 
 fa fa37(.a(s[41]),.b(c[19]),.cin(c[40]),.s(s[48]),.cout(c[48]));

 fa fa38(.a(b[7]&a[7]),.b(c[33]),.cin(c[41]),.s(s[49]),.cout(c[49]));


   assign term1[0]=b[0]&a[0];
   assign term1[1]=b[0]&a[1];
   assign term1[2]=s[1];
   assign term1[3]=s[20];
   assign term1[4]=s[21];
   assign term1[5]=s[22];
   assign term1[6]=s[34];
   assign term1[7]=s[42];
   assign term1[8]=s[43];
   assign term1[9]=s[44];   
   assign term1[10]=s[45];
   assign term1[11]=s[46];
   assign term1[12]=s[47];
   assign term1[13]=s[48];
   assign term1[14]=s[49];
   assign term1[15]=c[49];         
            
     
   assign term2[0]=0;
   assign term2[1]=b[1]&a[0];
   assign term2[2]=b[2]&a[0];
   assign term2[3]=b[3]&a[0];
   assign term2[4]=s[4];
   assign term2[5]=s[6];
   assign term2[6]=s[24];
   assign term2[7]=s[26];
   assign term2[8]=c[42];
   assign term2[9]=c[43];   
   assign term2[10]=c[44];
   assign term2[11]=c[45];
   assign term2[12]=c[46];
   assign term2[13]=c[47];
   assign term2[14]=c[48];
   assign term2[15]=0;         
        
 cla_16bits cla1(.a(term1),.b(term2),.c_in(0),.out(out[15:0]),.c_out(out[16]));           
   
endmodule

// Name: Chukwuemeka Opara, Donovan Jones
// BU ID: U48395858, U35079015
// EC413 Project: Register File Test Bench

module regFile_tb();

reg clock, reset;

/******************************************************************************
*                      Start Your Code Here
******************************************************************************/
reg wEn;
reg [4:0]read_sel1, read_sel2, write_sel;
reg [31:0] write_data;

wire [31:0] read_data1, read_data2;

// Fill in port connections
regFile uut (
  .clock(clock),
  .reset(reset),
  .wEn(wEn), // Write Enable
  .write_data(write_data),
  .read_sel1(read_sel1),
  .read_sel2(read_sel2),
  .write_sel(write_sel),
  .read_data1(read_data1),
  .read_data2(read_data2)
);


always #5 clock = ~clock;

initial begin
  clock = 1'b1;
  reset = 1'b1;
  #1;
  #20;
  reset = 1'b0;

  // Test reads and writes to the register file here

	wEn = 1'b1;
	write_data = 32'd12;
   read_sel1 = 5'b00000;
	read_sel2 = 5'b00010;
	write_sel = 5'b00000;
	
	#20;
	wEn = 1'b1;
	write_data = 32'd11;
   read_sel1 = 5'b00001;
	read_sel2 = 5'b00010;
	write_sel = 5'b00001;
	
	#20;
	wEn = 1'b1;
	write_data = 32'd10;
   read_sel1 = 5'b00001;
	read_sel2 = 5'b00011;
	write_sel = 5'b00001;
	
	#20;
	wEn = 1'b1;
	write_data = 32'd9;
   read_sel1 = 5'b00001;
	read_sel2 = 5'b00010;
	write_sel = 5'b00010;
	
end
endmodule

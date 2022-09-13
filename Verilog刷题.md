# 进度记录

## 2022.9.8 

开始

# HDLBits

## Getting Started

### [Getting Started](https://hdlbits.01xz.net/wiki/step_one)

### [Output Zero](https://hdlbits.01xz.net/wiki/zero)

输出0；

```verilog
//HDLBits uses Verilog-2001 ANSI-style port declaration syntax because it's easier to read and reduces typos. You may use the older Verilog-1995 syntax if you wish. For example, the two module declarations below are acceptable and equivalent
module top_module(zero);// Module body starts after semicolon
    output zero;
	wire zero;
    always
    begin
    	zero=1'b0;
    end
endmodule

或者
module top_module(
    output zero
);// Module body starts after semicolon

    assign zero = 0;

endmodule
```

总结：

- 赋值语句：连续赋值（有assign），过程赋值（无assign）
- 过程赋值必须要在过程语句块中，过程语句块就两种：initial、always。连续赋值语句不能出现在过程快中（initial/always）



## Verilog Language

### Basics

#### [Simple wire](https://hdlbits.01xz.net/wiki/wire)

```verilog
module top_module(  in,  out );
    input in;
    output out;
    wire out;
    wire in;
    assign out =in;

endmodule

//或者

module top_module( input in, output out );
	
	assign out = in;
	// Note that wires are directional, so "assign in = out" is not equivalent.
	
endmodule

```

module top_module( input in, output out );	默认in和out是wire类型的。

#### [Four wires](https://hdlbits.01xz.net/wiki/wire4)

```verilog
module top_module( 
    input a,b,c,
    output w,x,y,z );
    assign w=a;
    assign x=b;
    assign y=b;
    assign z=c;

endmodule
```

#### [Inverter](https://hdlbits.01xz.net/wiki/notgate)

```verilog
module top_module( input in, output out );
    assign out =~in;

endmodule

```

Verilog中有两种取反，逻辑取反 ! 和按位取反 ~ ，前者只能用于一位的信号，即!1=0, !0=1，在电路中对应一个反相器；后者还可用于多位宽的信号，如~101=010。

#### [AND gate](https://hdlbits.01xz.net/wiki/andgate)

```verilog
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = a&b;

endmodule
```



#### [NOR gate](https://hdlbits.01xz.net/wiki/norgate)

![image-20220909233124788](Verilog刷题.assets/image-20220909233124788.png)

或非门

```verilog
module top_module( 
    input a, 
    input b, 
    output out );
    assign out=~(a|b);

endmodule
```

#### [XNOR gate](https://hdlbits.01xz.net/wiki/xnorgate)

```verilog
module top_module( 
    input a, 
    input b, 
    output out );
    assign out =~(a^b);

endmodule
```

#### [Declaring wires](https://hdlbits.01xz.net/wiki/wire_decl)

![image-20220912200130840](Verilog刷题.assets/image-20220912200130840.png)

```verilog
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire leftUp;
    wire leftDown;
    assign leftUp=a&b;
	assign leftDown=c&d;
	assign out=leftDown|leftUp;
	assign out_n=!out;
	

endmodule
```

#### [7458 chip](https://hdlbits.01xz.net/wiki/7458)

```verilog
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

	assign p2y=(p2a&p2b)|(p2c&p2d);
	assign p1y=(p1a&p1b&p1c)|(p1d&p1e&p1f);

endmodule
```



### Vectors

Verilog中的向量通过定义一个名称将相关的**同类型信号进行分组**，使得它们更易被调用或操作。声明向量时，需将维数（向量由信号组成，所以也可称位宽）放在向量名之前，且一般以 **[n-1:0]** 的格式来声明**n**维（位）的向量，这与C语言的数组不同。在部分选择向量中的bit时，则将位宽放于向量名之后。

#### [Vectors](https://hdlbits.01xz.net/wiki/vector0)

```verilog
module Vector0( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration
	
	assign outv=vec;
	assign o2=vec[2];
	assign o1=vec[1];
	assign o0=vec[0];

endmodule
```



#### [Vectors in more detail](https://hdlbits.01xz.net/wiki/vector1)

```verilog
module Vector1(
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
	
	assign out_lo=in[7:0];
	assign out_hi=in[15:8];
endmodule
```



#### [Vector part select](https://hdlbits.01xz.net/wiki/vector2)

**Practice:** Build a circuit that will reverse the byte ordering of the word: 

AaaaaaaaBbbbbbbbCcccccccDddddddd → DdddddddCcccccccBbbbbbbbAaaaaaaa

```verilog
module Vector2(
    input [31:0] in,
    output [31:0] out );//
	
    assign out[31:24] = in[ 7: 0];
    assign out[23:16] = in[15: 8];
    assign out[15: 8] = in[23:16];
    assign out[ 7: 0] = in[31:24];
endmodule
```

当需要改变端序时，通常会使用此操作（比如 x86 体系按小端存储数据，而Internet协议中均使用大端，在两者间进行数据交换前，均要进行大小端转换）。大小端在上一节提到过，有兴趣的童鞋可以看计算机组成之类的书籍。

#### [Bitwise operators](https://hdlbits.01xz.net/wiki/vectorgates)

![image-20220912212737019](Verilog刷题.assets/image-20220912212737019.png)

```
module Vectorgates(
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
    );
	
	assign	out_or_bitwise=a|b;
	assign	out_or_logical=a||b;
	assign	out_not=~{b,a};
endmodule

```

！ 逻辑反

~ 位反

#### [Four-input gates](https://hdlbits.01xz.net/wiki/gates4)

```verilog
module Gates4(
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
    );
	
	assign out_and = & in;
	assign out_or  = | in;
	assign out_xor = ^ in;
endmodule
```

#### [Vector concatenation operator](https://hdlbits.01xz.net/wiki/vector3)

![image-20220912215803993](Verilog刷题.assets/image-20220912215803993.png)

```verilog
module Vector3(
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
	
	assign w={a,b[4:2]};
	assign x={b[1:0],c,d[4]};
	assign y={d[3:0],e[4:1]};
	assign z={e[0],f,2'b11};
endmodule

或者
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    assign {w,x,y,z} = {a,b,c,d,e,f,2'b11};

endmodule
```



#### [Vector reversal 1](https://hdlbits.01xz.net/wiki/vectorr)

```
module Vectorr(
    input [7:0] in,
    output [7:0] out
    );
	assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
endmodule

```



#### [Replication operator](https://hdlbits.01xz.net/wiki/vector4)

```
module top_module (
    input [7:0] in,
    output [31:0] out );//

    // assign out = { replicate-sign-bit , the-input };
    assign out = {{24{in[7]}},in};
endmodule
```

{}复制功能时最外层的那个大括号{}是不能省略的！里外两层大括号是语法的必须要求！

#### [More replication](https://hdlbits.01xz.net/wiki/vector5)

```verilog
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
	assign out = ~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ {5{a,b,c,d,e}};
    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

endmodule
```



### Modules: Hierarchy

模块的**层次化结构**通过在一个模块中例化另一个模块来实现，只要这些模块都处于一个project（项目）中，编译器就

#### [Modules](https://hdlbits.01xz.net/wiki/module)

![image-20220913205655673](Verilog刷题.assets/image-20220913205655673.png)

```verilog
module top_module ( input a, input b, output out );
 mod_a instance2 ( .in1(a), .in2(b), .out(out));
endmodule
```



#### [Connecting ports by position](https://hdlbits.01xz.net/wiki/module_pos)

#### [Connecting ports by name](https://hdlbits.01xz.net/wiki/module_name)

#### [Three modules](https://hdlbits.01xz.net/wiki/module_shift)

![image-20220913210528990](Verilog刷题.assets/image-20220913210528990.png)

```verilog
module top_module ( input clk, input d, output q );
	wire q1;
    wire q2;

    my_dff Dff1(.clk(clk),
                .d(d),
                .q(q1));
    my_dff Dff2(.clk(clk),
                .d(q1),
                .q(q2));
    my_dff Dff3(.clk(clk),
                .d(q2),
                .q(q));
endmodule
```

#### [Modules and vectors](https://hdlbits.01xz.net/wiki/module_shift8)

![image-20220913212329894](Verilog刷题.assets/image-20220913212329894.png)

```verilog
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]q1,q2,q3;

    my_dff8 dff1( .clk(clk), .d(d), .q(q1));
    my_dff8 dff2( .clk(clk), .d(q1), .q(q2));
    my_dff8 dff3( .clk(clk), .d(q2), .q(q3));
    
    always@(*)
        case(sel)
            2'b00:q=d;
            2'b01:q=q1;
            2'b10:q=q2;
            2'b11:q=q3;
        endcase
endmodule
```



#### [Adder 1](https://hdlbits.01xz.net/wiki/module_add)

#### [Adder 2](https://hdlbits.01xz.net/wiki/module_fadd)

![image-20220913214433152](Verilog刷题.assets/image-20220913214433152.png)

```verilog
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire add16_1_out;
    add16 add16_1(.cin(0),.a(a[15:0]),.b(b[15:0]),.cout(add16_1_out),.sum(sum[15:0]));
    add16 add16_2(.cin(add16_1_out),.a(a[31:16]),.b(b[31:16]),.sum(sum[31:16]));
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum=a^b^cin;
    assign cout=(a&b)|(a&cin)|(b&cin);

// Full adder module here

endmodule
```



#### [Carry-select adder](https://hdlbits.01xz.net/wiki/module_cseladd)

前两题实现的是**行波进位加法器**（也称**串行进位**或**逐位进位加法器**），这类加法器的缺点是较高位的相加结果必须等到低一位的进位产生之后才能开始计算，这使得加法器的计算延迟变大。**选择进位**是一种改进方法，如图所示，第一级加法器与之前相同，但第二级加法器有两个，一个假设进位为0，另一个假设进位为1，然后用2选1多路选择器来选择哪个是正确的。

![image-20220913214639495](Verilog刷题.assets/image-20220913214639495.png)

```verilog
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire sel;
    wire [31:16]sum0, sum1;

    add16 add1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(sel));
    add16 add21 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum0), .cout());
    add16 add22 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum1), .cout());

    assign sum[31:16] = sel?sum1:sum0;	//这是条件操作符，效果与case语句一样

endmodule
```



#### [Adder-subtractor](https://hdlbits.01xz.net/wiki/module_addsub)



### Procedures

Procedures include **always**, initial, task, and function blocks. Procedures allow sequential statements (which cannot be used outside of a procedure) to be used to describe the behaviour of a circuit.

- [Always blocks (combinational)](https://hdlbits.01xz.net/wiki/alwaysblock1)
- [Always blocks (clocked)](https://hdlbits.01xz.net/wiki/alwaysblock2)
- [If statement](https://hdlbits.01xz.net/wiki/always_if)
- [If statement latches](https://hdlbits.01xz.net/wiki/always_if2)
- [Case statement](https://hdlbits.01xz.net/wiki/always_case)
- [Priority encoder](https://hdlbits.01xz.net/wiki/always_case2)
- [Priority encoder with casez](https://hdlbits.01xz.net/wiki/always_casez)
- [Avoiding latches](https://hdlbits.01xz.net/wiki/always_nolatches)

### More Verilog Features

- [Conditional ternary operator](https://hdlbits.01xz.net/wiki/conditional)
- [Reduction operators](https://hdlbits.01xz.net/wiki/reduction)
- [Reduction: Even wider gates](https://hdlbits.01xz.net/wiki/gates100)
- [Combinational for-loop: Vector reversal 2](https://hdlbits.01xz.net/wiki/vector100r)
- [Combinational for-loop: 255-bit population count](https://hdlbits.01xz.net/wiki/popcount255)
- [Generate for-loop: 100-bit binary adder 2](https://hdlbits.01xz.net/wiki/adder100i)
- [Generate for-loop: 100-digit BCD adder](https://hdlbits.01xz.net/wiki/bcdadd100)

## Circuits

### Combinational Logic

#### Basic Gates

- [Wire](https://hdlbits.01xz.net/wiki/exams/m2014_q4h)
- [GND](https://hdlbits.01xz.net/wiki/exams/m2014_q4i)
- [NOR](https://hdlbits.01xz.net/wiki/exams/m2014_q4e)
- [Another gate](https://hdlbits.01xz.net/wiki/exams/m2014_q4f)
- [Two gates](https://hdlbits.01xz.net/wiki/exams/m2014_q4g)
- [More logic gates](https://hdlbits.01xz.net/wiki/gates)
- [7420 chip](https://hdlbits.01xz.net/wiki/7420)
- [Truth tables](https://hdlbits.01xz.net/wiki/truthtable1)
- [Two-bit equality](https://hdlbits.01xz.net/wiki/mt2015_eq2)
- [Simple circuit A](https://hdlbits.01xz.net/wiki/mt2015_q4a)
- [Simple circuit B](https://hdlbits.01xz.net/wiki/mt2015_q4b)
- [Combine circuits A and B](https://hdlbits.01xz.net/wiki/mt2015_q4)
- [Ring or vibrate?](https://hdlbits.01xz.net/wiki/ringer)
- [Thermostat](https://hdlbits.01xz.net/wiki/thermostat)
- [3-bit population count](https://hdlbits.01xz.net/wiki/popcount3)
- [Gates and vectors](https://hdlbits.01xz.net/wiki/gatesv)
- [Even longer vectors](https://hdlbits.01xz.net/wiki/gatesv100)

#### Multiplexers

- [2-to-1 multiplexer](https://hdlbits.01xz.net/wiki/mux2to1)
- [2-to-1 bus multiplexer](https://hdlbits.01xz.net/wiki/mux2to1v)
- [9-to-1 multiplexer](https://hdlbits.01xz.net/wiki/mux9to1v)
- [256-to-1 multiplexer](https://hdlbits.01xz.net/wiki/mux256to1)
- [256-to-1 4-bit multiplexer](https://hdlbits.01xz.net/wiki/mux256to1v)

#### Arithmetic Circuits

- [Half adder](https://hdlbits.01xz.net/wiki/hadd)
- [Full adder](https://hdlbits.01xz.net/wiki/fadd)
- [3-bit binary adder](https://hdlbits.01xz.net/wiki/adder3)
- [Adder](https://hdlbits.01xz.net/wiki/exams/m2014_q4j)
- [Signed addition overflow](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q1c)
- [100-bit binary adder](https://hdlbits.01xz.net/wiki/adder100)
- [4-digit BCD adder](https://hdlbits.01xz.net/wiki/bcdadd4)

#### Karnaugh Map to Circuit

- [3-variable](https://hdlbits.01xz.net/wiki/kmap1)
- [4-variable](https://hdlbits.01xz.net/wiki/kmap2)
- [4-variable](https://hdlbits.01xz.net/wiki/kmap3)
- [4-variable](https://hdlbits.01xz.net/wiki/kmap4)
- [Minimum SOP and POS](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q2)
- [Karnaugh map](https://hdlbits.01xz.net/wiki/exams/m2014_q3)
- [Karnaugh map](https://hdlbits.01xz.net/wiki/exams/2012_q1g)
- [K-map implemented with a multiplexer](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q3)

### Sequential Logic

#### Latches and Flip-Flops

- [D flip-flop](https://hdlbits.01xz.net/wiki/dff)
- [D flip-flops](https://hdlbits.01xz.net/wiki/dff8)
- [DFF with reset](https://hdlbits.01xz.net/wiki/dff8r)
- [DFF with reset value](https://hdlbits.01xz.net/wiki/dff8p)
- [DFF with asynchronous reset](https://hdlbits.01xz.net/wiki/dff8ar)
- [DFF with byte enable](https://hdlbits.01xz.net/wiki/dff16e)
- [D Latch](https://hdlbits.01xz.net/wiki/exams/m2014_q4a)
- [DFF](https://hdlbits.01xz.net/wiki/exams/m2014_q4b)
- [DFF](https://hdlbits.01xz.net/wiki/exams/m2014_q4c)
- [DFF+gate](https://hdlbits.01xz.net/wiki/exams/m2014_q4d)
- [Mux and DFF](https://hdlbits.01xz.net/wiki/mt2015_muxdff)
- [Mux and DFF](https://hdlbits.01xz.net/wiki/exams/2014_q4a)
- [DFFs and gates](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q4)
- [Create circuit from truth table](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q7)
- [Detect an edge](https://hdlbits.01xz.net/wiki/edgedetect)
- [Detect both edges](https://hdlbits.01xz.net/wiki/edgedetect2)
- [Edge capture register](https://hdlbits.01xz.net/wiki/edgecapture)
- [Dual-edge triggered flip-flop](https://hdlbits.01xz.net/wiki/dualedge)

#### Counters

- [Four-bit binary counter](https://hdlbits.01xz.net/wiki/count15)
- [Decade counter](https://hdlbits.01xz.net/wiki/count10)
- [Decade counter again](https://hdlbits.01xz.net/wiki/count1to10)
- [Slow decade counter](https://hdlbits.01xz.net/wiki/countslow)
- [Counter 1-12](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q7a)
- [Counter 1000](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q7b)
- [4-digit decimal counter](https://hdlbits.01xz.net/wiki/countbcd)
- [12-hour clock](https://hdlbits.01xz.net/wiki/count_clock)

#### Shift Registers

- [4-bit shift register](https://hdlbits.01xz.net/wiki/shift4)
- [Left/right rotator](https://hdlbits.01xz.net/wiki/rotate100)
- [Left/right arithmetic shift by 1 or 8](https://hdlbits.01xz.net/wiki/shift18)
- [5-bit LFSR](https://hdlbits.01xz.net/wiki/lfsr5)
- [3-bit LFSR](https://hdlbits.01xz.net/wiki/mt2015_lfsr)
- [32-bit LFSR](https://hdlbits.01xz.net/wiki/lfsr32)
- [Shift register](https://hdlbits.01xz.net/wiki/exams/m2014_q4k)
- [Shift register](https://hdlbits.01xz.net/wiki/exams/2014_q4b)
- [3-input LUT](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q12)

#### More Circuits

- Cellular automata
  - [Rule 90](https://hdlbits.01xz.net/wiki/rule90)
  - [Rule 110](https://hdlbits.01xz.net/wiki/rule110)
  - [Conway's Game of Life 16x16](https://hdlbits.01xz.net/wiki/conwaylife)

#### Finite State Machines

- [Simple FSM 1 (asynchronous reset)](https://hdlbits.01xz.net/wiki/fsm1)
- [Simple FSM 1 (synchronous reset)](https://hdlbits.01xz.net/wiki/fsm1s)
- [Simple FSM 2 (asynchronous reset)](https://hdlbits.01xz.net/wiki/fsm2)
- [Simple FSM 2 (synchronous reset)](https://hdlbits.01xz.net/wiki/fsm2s)
- [Simple state transitions 3](https://hdlbits.01xz.net/wiki/fsm3comb)
- [Simple one-hot state transitions 3](https://hdlbits.01xz.net/wiki/fsm3onehot)
- [Simple FSM 3 (asynchronous reset)](https://hdlbits.01xz.net/wiki/fsm3)
- [Simple FSM 3 (synchronous reset)](https://hdlbits.01xz.net/wiki/fsm3s)
- [Design a Moore FSM](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q4)
- [Lemmings 1](https://hdlbits.01xz.net/wiki/lemmings1)
- [Lemmings 2](https://hdlbits.01xz.net/wiki/lemmings2)
- [Lemmings 3](https://hdlbits.01xz.net/wiki/lemmings3)
- [Lemmings 4](https://hdlbits.01xz.net/wiki/lemmings4)
- [One-hot FSM](https://hdlbits.01xz.net/wiki/fsm_onehot)
- [PS/2 packet parser](https://hdlbits.01xz.net/wiki/fsm_ps2)
- [PS/2 packet parser and datapath](https://hdlbits.01xz.net/wiki/fsm_ps2data)
- [Serial receiver](https://hdlbits.01xz.net/wiki/fsm_serial)
- [Serial receiver and datapath](https://hdlbits.01xz.net/wiki/fsm_serialdata)
- [Serial receiver with parity checking](https://hdlbits.01xz.net/wiki/fsm_serialdp)
- [Sequence recognition](https://hdlbits.01xz.net/wiki/fsm_hdlc)

- [Q8: Design a Mealy FSM](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q8)
- [Q5a: Serial two's complementer (Moore FSM)](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q5a)
- [Q5b: Serial two's complementer (Mealy FSM)](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q5b)
- [Q3a: FSM](https://hdlbits.01xz.net/wiki/exams/2014_q3fsm)
- [Q3b: FSM](https://hdlbits.01xz.net/wiki/exams/2014_q3bfsm)
- [Q3c: FSM logic](https://hdlbits.01xz.net/wiki/exams/2014_q3c)
- [Q6b: FSM next-state logic](https://hdlbits.01xz.net/wiki/exams/m2014_q6b)
- [Q6c: FSM one-hot next-state logic](https://hdlbits.01xz.net/wiki/exams/m2014_q6c)
- [Q6: FSM](https://hdlbits.01xz.net/wiki/exams/m2014_q6)
- [Q2a: FSM](https://hdlbits.01xz.net/wiki/exams/2012_q2fsm)
- [Q2b: One-hot FSM equations](https://hdlbits.01xz.net/wiki/exams/2012_q2b)
- [Q2a: FSM](https://hdlbits.01xz.net/wiki/exams/2013_q2afsm)
- [Q2b: Another FSM](https://hdlbits.01xz.net/wiki/exams/2013_q2bfsm)

### Building Larger Circuits

- [Counter with period 1000](https://hdlbits.01xz.net/wiki/exams/review2015_count1k)

- [4-bit shift register and down counter](https://hdlbits.01xz.net/wiki/exams/review2015_shiftcount)
- [FSM: Sequence 1101 recognizer](https://hdlbits.01xz.net/wiki/exams/review2015_fsmseq)
- [FSM: Enable shift register](https://hdlbits.01xz.net/wiki/exams/review2015_fsmshift)
- [FSM: The complete FSM](https://hdlbits.01xz.net/wiki/exams/review2015_fsm)
- [The complete timer](https://hdlbits.01xz.net/wiki/exams/review2015_fancytimer)
- [FSM: One-hot logic equations](https://hdlbits.01xz.net/wiki/exams/review2015_fsmonehot)

## Verification: Reading Simulations

### Finding bugs in code

- [Mux](https://hdlbits.01xz.net/wiki/bugs_mux2)
- [NAND](https://hdlbits.01xz.net/wiki/bugs_nand3)
- [Mux](https://hdlbits.01xz.net/wiki/bugs_mux4)
- [Add/sub](https://hdlbits.01xz.net/wiki/bugs_addsubz)
- [Case statement](https://hdlbits.01xz.net/wiki/bugs_case)

### Build a circuit from a simulation waveform

- [Combinational circuit 1](https://hdlbits.01xz.net/wiki/sim/circuit1)
- [Combinational circuit 2](https://hdlbits.01xz.net/wiki/sim/circuit2)
- [Combinational circuit 3](https://hdlbits.01xz.net/wiki/sim/circuit3)
- [Combinational circuit 4](https://hdlbits.01xz.net/wiki/sim/circuit4)
- [Combinational circuit 5](https://hdlbits.01xz.net/wiki/sim/circuit5)
- [Combinational circuit 6](https://hdlbits.01xz.net/wiki/sim/circuit6)
- [Sequential circuit 7](https://hdlbits.01xz.net/wiki/sim/circuit7)
- [Sequential circuit 8](https://hdlbits.01xz.net/wiki/sim/circuit8)
- [Sequential circuit 9](https://hdlbits.01xz.net/wiki/sim/circuit9)
- [Sequential circuit 10](https://hdlbits.01xz.net/wiki/sim/circuit10)

## Verification: Writing Testbenches

- [Clock](https://hdlbits.01xz.net/wiki/tb/clock)
- [Testbench1](https://hdlbits.01xz.net/wiki/tb/tb1)
- [AND gate](https://hdlbits.01xz.net/wiki/tb/and)
- [Testbench2](https://hdlbits.01xz.net/wiki/tb/tb2)
- [T flip-flop](https://hdlbits.01xz.net/wiki/tb/tff)
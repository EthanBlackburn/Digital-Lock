----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:13 11/20/2013 
-- Design Name: 
-- Module Name:    Lock - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lock is
    Port ( X : in  STD_LOGIC_VECTOR(4 downto 0);
          clk: in std_logic;
			  R,H: in STD_LOGIC;
			 ARMED, ALARM: out STD_LOGIC);
end Lock;

architecture Behavioral of Lock is

Type state_type is ( D0, D1, DI1, D2, DI2, D3, DI3, D4, DI4, D5, DI5, DW, DWI, --Disarmed states
AL0,ALI0, AL1, ALI1, AL2, ALI2, AL3, ALI3, AL4, ALI4, AL5, ALI5,--Armed/Locked states
ALW0, ALWI0, ALW1, ALWI1, ALW2, ALWI2, ALW3, ALWI3, ALW4, ALWI4, ALW0R0,ALW0R1, ALW1R0, ALW1R1, ALW2R0, ALW2R1, ALW3R0, ALW3R1,ALW4R0,ALW4R1,--Armed/locked wrong
A0, A1, AI1, A2, AI2, A3, AI3, A4, AI4, A5, AI5); --Alarm states
Signal state, next_state: state_type;
Signal alarm_sig, armed_sig: std_logic;
constant X0: std_logic_vector := "00001";
constant X1: std_logic_vector := "00010";
constant X2: std_logic_vector := "00100";
constant X3: std_logic_vector := "01000";
constant X4: std_logic_vector := "10000";
constant zero: std_logic_vector := "00000";
begin
process(clk, R, H)
begin
	if(H = '0') then
		if(clk'event and clk = '1') Then
			if(R = '1') then
				state<= next_state;
				if(next_state = A0) then
					alarm_sig <='1';
					armed_sig <='1';
				elsif(next_state = D0) then
					alarm_sig <= '0';
					armed_sig <= '0';
				elsif(next_state = AL0) then
					alarm_sig <= '0';
					armed_sig <= '1';
				end if;
			elsif(R = '0') then
				state<=D0;
			end if;
		end if;
	elsif(H='1') then
		if(clk'event and clk = '1') Then
			if(armed_sig = '1') then
				state<=next_state;
				alarm_sig <= '1';
			else
				state<= D0;
			end if;
		end if;
	end if;
end process;
Process(X,state)
Begin
 Case state is
  when D0 =>
    Case X is
     when zero => next_state <= D0;  
     when X0 => next_state <= DW;  
     when X1 => next_state <= DW;  
     when X2 => next_state <= D1;  
     when X3 => next_state <= DW;  
     when X4 => next_state <= D0;  
    when others=> next_state <= DW;
    end case;
 
  when D1 =>
    Case X is
     when zero => next_state <= DI1; 
     when X2 => next_state <= D1; 
    when others=> next_state <= DW;
    end case;
  when DI1 =>
    Case X is
     when zero => next_state <= DI1; 
     when X0 => next_state <= D2; 
     when X1 => next_state <= DW; 
     when X2 => next_state <= DW; 
     when X3 => next_state <= DW; 
     when X4 => next_state <= D0; 
    when others=> next_state <= DW;
    end case;
  when D2 =>
    Case X is
     when zero => next_state <= DI2; 
     when X0 => next_state <= D2; 
    when others=> next_state <= DW;
    end case;
  when DI2 =>
    Case X is
     when zero => next_state <= DI2; 
     when X0 => next_state <= DW; 
     when X1 => next_state <= DW; 
     when X2 => next_state <= DW; 
     when X3 => next_state <= D3; 
     when X4 => next_state <= D0; 
    when others=> next_state <= DW;
    end case;
  when D3 =>
    Case X is
     when zero => next_state <= DI3; 
     when X3 => next_state <= D3; 
    when others=> next_state <= DW;
    end case;   
  when DI3 =>
    Case X is
     when zero => next_state <= DI3; 
     when X0 => next_state <= DW; 
     when X1 => next_state <= DW; 
     when X2 => next_state <= DW; 
     when X3 => next_state <= D4; 
     when X4 => next_state <= D0; 
    when others=> next_state <= DW;
    end case; 
  when D4 =>
    Case X is
     when zero => next_state <= DI4; 
     when X3 => next_state <= D4; 
    when others=> next_state <= DW;
    end case; 
  when DI4 =>
    Case X is
     when zero => next_state <= DI4; 
     when X0 => next_state <= DW; 
     when X1 => next_state <= D5; 
     when X2 => next_state <= DW; 
     when X3 => next_state <= DW; 
     when X4 => next_state <= D0; 
    when others=> next_state <= DW;
    end case; 	
  when D5 =>
    Case X is
     when zero => next_state <= DI5; 
     when X1 => next_state <= D5; 
    when others=> next_state <= DW;
    end case; 	 
  when DI5 =>
    Case X is
     when zero => next_state <= DI5; 
     when X0 => next_state <= DW; 
     when X1 => next_state <= DW; 
     when X2 => next_state <= DW; 
     when X3 => next_state <= DW; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= DW;
    end case; 
  when DW =>
    Case X is
     when zero => next_state <= DWI; 
     when X0 => next_state <= DW; 
     when X1 => next_state <= DW; 
     when X2 => next_state <= DW; 
     when X3 => next_state <= DW; 
     when X4 => next_state <= DW; 
    when others=> next_state <= DW;
    end case; 
  when DWI =>
    Case X is
     when zero => next_state <= DWI; 
     when X0 => next_state <= DW; 
     when X1 => next_state <= DW; 
     when X2 => next_state <= DW; 
     when X3 => next_state <= DW; 
     when X4 => next_state <= D0; 
    when others=> next_state <= DW;
    end case;
-- End of Reset Block--

--Begin Armed/Lock Block--
  when AL0 =>
    Case X is
     when zero => next_state <= ALI0; 
     when X0 => next_state <= ALW0; 
     when X1 => next_state <= ALW0; 
     when X2 => next_state <= AL0; 
     when X3 => next_state <= ALW0; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW0;
    end case;
  when ALI0 =>
	 Case X is
	  when zero => next_state <= ALI0; 
     when X0 => next_state <= ALW0; 
     when X1 => next_state <= ALW0; 
     when X2 => next_state <= AL1; 
     when X3 => next_state <= ALW0; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW0;
    end case;
  when AL1 =>
    Case X is
     when zero => next_state <= ALI1; 
     when X2 => next_state <= AL1; 
    when others=> next_state <= ALW0;
    end case;
  when ALI1 =>
    Case X is
     when zero => next_state <= ALI1; 
     when X0 => next_state <= AL2; 
     when X1 => next_state <= ALW1; 
     when X2 => next_state <= ALW0R0; 
     when X3 => next_state <= ALW1; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW1;
    end case;
  when AL2 =>
    Case X is
     when zero => next_state <= ALI2; 
     when X0 => next_state <= AL2; 
    when others=> next_state <= ALW1;
    end case;
  when ALI2 =>
    Case X is
     when zero => next_state <= ALI2; 
     when X0 => next_state <= ALW2; 
     when X1 => next_state <= ALW2; 
     when X2 => next_state <= ALW1R0; 
     when X3 => next_state <= AL3; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW2;
    end case;	 
  when AL3 =>
    Case X is
     when zero => next_state <= ALI3; 
     when X3 => next_state <= AL3; 
    when others=> next_state <= ALW2;
    end case;
  when ALI3 =>
    Case X is
     when zero => next_state <= ALI3; 
     when X0 => next_state <= ALW3; 
     when X1 => next_state <= ALW3; 
     when X2 => next_state <= ALW2R0; 
     when X3 => next_state <= AL4; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW3;
    end case;
  when AL4 =>
    Case X is
     when zero => next_state <= ALI4; 
     when X3 => next_state <= AL4; 
    when others=> next_state <= ALW3;
    end case;
  when ALI4 =>
    Case X is
     when zero => next_state <= ALI4; 
     when X0 => next_state <= ALW4; 
     when X1 => next_state <= AL5; 
     when X2 => next_state <= ALW3R0; 
     when X3 => next_state <= ALW4; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW4;
    end case;
  when AL5 =>
    Case X is
     when zero => next_state <= ALI5; 
     when X1 => next_state <= AL5; 
    when others=> next_state <= ALW4;
    end case;
  when ALI5 =>
    Case X is
     when zero => next_state <= ALI5; 
     when X0 => next_state <= A0; 
     when X1 => next_state <= A0; 
     when X2 => next_state <= ALW4R0; 
     when X3 => next_state <= A0; 
     when X4 => next_state <= D0; 
    when others=> next_state <= A0;
    end case;
-- Chain of correct inputs --
--Chain of incorrect inputs -- 
  when ALW0 =>
    Case X is
     when zero => next_state <= ALWI0; 
     when X0 => next_state <= ALW0; 
     when X1 => next_state <= ALW0; 
     when X3 => next_state <= ALW0; 
    when others=> next_state <= ALW0;
    end case;
  when ALWI0 =>
    Case X is
     when zero => next_state <= ALWI0; 
     when X0 => next_state <= ALW1; 
     when X1 => next_state <= ALW1; 
     when X2 => next_state <= ALW0R0; 
     when X3 => next_state <= ALW1; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW1;
    end case;
  when ALW1 =>
    Case X is
     when zero => next_state <= ALWI1; 
     when X0 => next_state <= ALW1; 
     when X1 => next_state <= ALW1; 
     when X3 => next_state <= ALW1; 
    when others=> next_state <= ALW1;
    end case;
  when ALWI1 =>
    Case X is
     when zero => next_state <= ALWI1; 
     when X0 => next_state <= ALW2; 
     when X1 => next_state <= ALW2; 
     when X2 => next_state <= ALW1R0; 
     when X3 => next_state <= ALW2; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW2;
    end case;
  when ALW2 =>
    Case X is
     when zero => next_state <= ALWI2; 
     when X0 => next_state <= ALW2; 
     when X1 => next_state <= ALW2; 
     when X3 => next_state <= ALW2; 
    when others=> next_state <= ALW2;
    end case;
  when ALWI2 =>
    Case X is
     when zero => next_state <= ALWI2;  
     when X0 => next_state <= ALW3;  
     when X1 => next_state <= ALW3;  
     when X2 => next_state <= ALW2R0; 
     when X3 => next_state <= ALW3;  
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW3;
    end case;
  when ALW3 =>
    Case X is
     when zero => next_state <= ALWI3;  
     when X0 => next_state <= ALW3;  
     when X1 => next_state <= ALW3;  
     when X3 => next_state <= ALW3; 
    when others=> next_state <= ALW3;
    end case;
  when ALWI3 =>
    Case X is
     when zero => next_state <= ALWI3;  
     when X0 => next_state <= ALW4;  
     when X1 => next_state <= ALW4;  
     when X2 => next_state <= ALW3R0;  
     when X3 => next_state <= ALW4;  
     when X4 => next_state <= AL0;  
    when others=> next_state <= ALW4;
    end case;
  when ALW4 =>
    Case X is
     when zero => next_state <= ALWI4;  
     when X0 => next_state <= ALW4;  
     when X1 => next_state <= ALW4;  
     when X3 => next_state <= ALW4;  
    when others=> next_state <= ALW4;
    end case;
  when ALWI4 =>
    Case X is
     when zero => next_state <= ALWI4;  
     when X0 => next_state <= A0;  
     when X1 => next_state <= A0; 
     when X2 => next_state <= ALW4R0; 
     when X3 => next_state <= A0;  
     when X4 => next_state <= A0;  
    when others=> next_state <= A0;
    end case;
	 --X2X2 INPUTS--
  when ALW0R0 =>
    Case X is
     when zero => next_state <= ALW0R1; 
     when X2 => next_state <= ALW0R0;  
    when others=> next_state <= ALW0;
    end case;
  when ALW0R1 =>
    Case X is
     when zero => next_state <= ALW0R1; 
     when X0 => next_state <= ALW2;  
     when X1 => next_state <= ALW2;  
     when X2 => next_state <= AL0;  
     when X3 => next_state <= ALW2;  
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW1;
    end case;
  when ALW1R0 =>
    Case X is
     when zero => next_state <= ALW1R1; 
     when X2 => next_state <= ALW1R0; 
    when others=> next_state <= ALW2;
    end case;
  when ALW1R1 =>
    Case X is
     when zero => next_state <= ALW1R1; 
     when X0 => next_state <= ALW3; 
     when X1 => next_state <= ALW3;  
     when X2 => next_state <= AL0;  
     when X3 => next_state <= ALW3;  
     when X4 => next_state <= AL0; 
    when others=> next_state <= ALW3;
    end case;
  when ALW2R0 =>
    Case X is
     when zero => next_state <= ALW2R1; 
     when X2 => next_state <= ALW2R0; 
    when others=> next_state <= ALW4;
    end case;
  when ALW2R1 =>
    Case X is
     when zero => next_state <= ALW2R1;  
     when X0 => next_state <= ALW4;  
     when X1 => next_state <= ALW4;  
     when X2 => next_state <= AL0;  
     when X3 => next_state <= ALW4; 
     when X4 => next_state <= AL0; 
    when others=> next_state <= A0;
    end case;
  when ALW3R0 =>
    Case X is
     when zero => next_state <= ALW3R1;  
     when X2 => next_state <= ALW3R0; 
    when others=> next_state <= A0;
    end case;
  when ALW3R1 =>
    Case X is
     when zero => next_state <= ALW3R1;  
     when X0 => next_state <= A0; 
     when X1 => next_state <= A0; 
     when X2 => next_state <= AL0; 
     when X3 => next_state <= A0; 
     when X4 => next_state <= A0; 
    when others=> next_state <= A0;
    end case;
  when ALW4R0 =>
    Case X is
     when zero => next_state <= ALW4R1; 
     when X2 => next_state <= ALW4R0; 
    when others=> next_state <= A0;
    end case;
  when ALW4R1 =>
    Case X is
     when zero => next_state <= ALW4R1; 
     when X0 => next_state <= A0; 
     when X1 => next_state <= A0; 
     when X2 => next_state <= AL0; 
     when X3 => next_state <= A0; 
     when X4 => next_state <= A0; 
    when others=> next_state <= A0;
    end case;
--END X2X2 COMBO BLOCK-- 

--alarm_sig BLOCK--
  when A0 =>
    Case X is
     when zero => next_state <= A0; 
     when X0 => next_state <= A0; 
     when X1 => next_state <= A0; 
     when X2 => next_state <= A1; 
     when X3 => next_state <= A0; 
     when X4 => next_state <= A0; 
    when others=> next_state <= A0;
    end case;
  when A1 =>
    Case X is
     when zero => next_state <= AI1; 
     when X2 => next_state <= A1; 
    when others=> next_state <= A0;
    end case;
  when AI1 =>
    Case X is
     when zero => next_state <= AI1; 
     when X0 => next_state <= A2;  
     when X1 => next_state <= A0;  
     when X2 => next_state <= A0;  
     when X3 => next_state <= A0;  
     when X4 => next_state <= A0; 
    when others=> next_state <= A0;
    end case;
  when A2 =>
    Case X is
     when zero => next_state <= AI2;  
     when X0 => next_state <= A2;  
    when others=> next_state <= A0;
    end case;
  when AI2 =>
    Case X is
     when zero => next_state <= AI2;  
     when X0 => next_state <= A0;  
     when X1 => next_state <= A0;  
     when X2 => next_state <= A0;  
     when X3 => next_state <= A3;  
     when X4 => next_state <= A0;  
    when others=> next_state <= A0;
    end case;
  when A3 =>
    Case X is
     when zero => next_state <= AI3; 
     when X3 => next_state <= A3; 
    when others=> next_state <= A0;
    end case;
  when AI3 =>
    Case X is
     when zero => next_state <= AI3;  
     when X0 => next_state <= A0;  
     when X1 => next_state <= A0;  
     when X2 => next_state <= A0;  
     when X3 => next_state <= A4;  
     when X4 => next_state <= A0; 
    when others=> next_state <= A0;
    end case;
  when A4 =>
    Case X is
     when zero => next_state <= AI4; 
     when X3 => next_state <= A4; 
    when others=> next_state <= A0;
    end case;
  when AI4 =>
    Case X is
     when zero => next_state <= AI4; 
     when X0 => next_state <= A0; 
     when X1 => next_state <= A5; 
     when X2 => next_state <= A0; 
     when X3 => next_state <= A0; 
     when X4 => next_state <= A0; 
    when others=> next_state <= A0;
    end case;
  when A5 =>
    Case X is
     when zero => next_state <= AI5; 
     when X1 => next_state <= A5; 
    when others=> next_state <= A0;
    end case;
  when AI5 =>
    Case X is
     when zero => next_state <= AI5; 
     when X0 => next_state <= A0; 
     when X1 => next_state <= A0; 
     when X2 => next_state <= A0; 
     when X3 => next_state <= A0; 
     when X4 => next_state <= D0; 
    when others=> next_state <= A0;
    end case;
--END OF alarm_sig BLOCK--
 end case;
end process;
ALARM<=alarm_sig; 
ARMED<=armed_sig;
end Behavioral;


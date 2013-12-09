restart

# Power on reset
force  R  0 0     
run 5ns
force  R  1 0
run 5ns
force clk 0 0, 1 {1000 ps} -r 2ns
run 5ns
force        H 1 0
run 5ns
force    X 00000 0
run 5ns
force         H 0
run 10ns

# D0 , test 1
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns
force    X 00000 0     
run 10ns
# D0

# D0 , test 2
force    X 00100 0    
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 10ns
force    X 10000 0     
run 5ns
force    X 00000 0  
run 10ns
# D0

# D0 , test 3
force    X 00100 0    
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns
force    X 00000 0     
run 10ns
# D0

# D0 test 4
force    X 00100 0    
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0     
run 5ns
force    X 00000 0    
run 10ns
# D0

# D0 test 5
force    X 00100 0    
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns   
force    X 00010 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns
force    X 00000 0   
run 10ns
# AL0


# AL0 test 6
force    X 00100 0     
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0  
run 10ns
# AL0


# AL0 test 7
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0 
run 10ns   
# AL0


# AL0   test 8
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0 
run 10ns   
# AL0

# AL0 test 9
force    X 00100 0    
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns   
force    X 00100 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0  
run 10ns
# AL0

# AL0 test 10
force    X 00100 0    
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 00010 0
run 5ns
force    X 00000 0
run 5ns   
force    X 00100 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0 
run 10ns
# AL0


# AL0 test 11
force    X 00100 0 
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns
force    X 00000 0   
run 10ns
# AL0


# AL0 test 12
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns
force    X 00000 0   
run 10ns
# AL0

# AL0 test 13
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns
force    X 00000 0   
run 10ns
# AL0

# AL0 test 14
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns 
# AL0


# A0 test 15
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00010 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# D0 test 16
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

# AL0 test 17
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# AL0

# A0 test 18
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# D0 test 19
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

# AL0 test 20
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# AL0

# A0 test 21
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# D0 test 22
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

# AL0 test 23
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# AL0

# A0 test 24
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 10ns 
# A0

# D0 test 25
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

# AL0 test 26
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# AL0

# A0 test 27
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00100 0
run 5ns
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# D0 test 28
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

# AL0 test 29
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# AL0

# A0 test 30
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00010 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# D0 test 31
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

# AL0 test 32
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# AL0

# A0 test 33
force    X 00010 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# A0 test 34
force    X 01000 0
run 5ns
force    X 00000 0
run 10ns
# A0

# A0 test 35
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00100 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# A0 test 36
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00010 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# A0 test 37
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns 
force    X 00100 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# A0 test 38
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# A0 test 39
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# A0 test 40
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 00100 0
run 5ns 
force    X 00000 0
run 10ns
# A0

# D0 test 41
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 00010 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

#
force    H 1
run 5ns
#

# D0 test 42
force    X 00100 0
run 5ns
force    X 00000 0
run 10ns
# D0

# D0 test 43
force    X 01000 0
run 5ns 
force    X 00000 0
run 10ns
# D0

#
force    H 0 
run 5ns
#

# D0 test 44
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    H 1
run 10ns 
#D0

#
force    H 0 
run 10ns
#

# D0 test 45
force    X 00100 0   
run 5ns
force    X 00000 0
run 5ns
force    X 00001 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0   
run 5ns
force    X 00010 0
run 5ns 
force    X 00000 0
run 5ns 
force    H 1
run 10ns 
# D0

#
force    H 0 
run 10ns
#

# AL0 test 46
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 00010 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# AL0

#
force    H 1
run 5ns
# A0

# A0 test 47
force    X 00100 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 00001 0
run 5ns 
force    X 00000 0
run 5ns 
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 01000 0
run 5ns
force    X 00000 0
run 5ns
force    X 00010 0
run 5ns
force    X 00000 0
run 5ns
force    X 10000 0
run 5ns 
force    X 00000 0
run 10ns
# D0
model Example_3
  Real x "state variable";
  
initial equation
  x = 2; 
equation
  der(x) =  1 - x"performs deivative";

end Example_3;
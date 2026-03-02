model Example_4
 Real x "state variable";
initial equation
   x = 10 "this is the initial condition for our equation";
equation
  der(x) = 1 - x; 

end Example_4;
model Example_13
  Motor_DC motor_DC annotation(
    Placement(transformation(origin = {14, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(step.y, motor_DC.u) annotation(
    Line(points = {{-68, 0}, {-4, 0}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Example_13;
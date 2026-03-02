model Example_10
  Modelica.Blocks.Sources.Constant const(k = 15)  annotation(
    Placement(transformation(origin = {-56, -2}, extent = {{-10, -10}, {10, 10}})));
  Our_Gainer_8 our_Gainer_8 annotation(
    Placement(transformation(origin = {34, -2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(const.y, our_Gainer_8.in_port) annotation(
    Line(points = {{-44, -2}, {25.5, -2}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Example_10;
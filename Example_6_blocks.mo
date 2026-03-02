model Example_6_blocks
  Modelica.Blocks.Sources.Constant const_value(k = 10)  annotation(
    Placement(transformation(origin = {-56, 8}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Blocks.Logical.Switch switch1 annotation(
    Placement(transformation(origin = {-2, -52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const_value1(k = 20) annotation(
    Placement(transformation(origin = {-70, -110}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant(k = false)  annotation(
    Placement(transformation(origin = {-98, -48}, extent = {{-10, -10}, {10, 10}})));
  Our_Gainer_8 our_Gainer_8 annotation(
    Placement(transformation(origin = {46, 8}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(switch1.u1, const_value.y) annotation(
    Line(points = {{-14, -44}, {-20, -44}, {-20, 8}, {-40, 8}}, color = {0, 0, 127}));
  connect(switch1.u3, const_value1.y) annotation(
    Line(points = {{-14, -60}, {-28, -60}, {-28, -110}, {-54, -110}}, color = {0, 0, 127}));
  connect(booleanConstant.y, switch1.u2) annotation(
    Line(points = {{-86, -48}, {-48, -48}, {-48, -52}, {-14, -52}}, color = {255, 0, 255}));
  connect(const_value.y, our_Gainer_8.in_port) annotation(
    Line(points = {{-40, 8}, {38, 8}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  version = "");
end Example_6_blocks;
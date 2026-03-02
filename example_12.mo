model example_12
  PID_Controller pID_Controller(Kp = 100, Ki = 300, Kd = 0)  annotation(
    Placement(transformation(origin = {-28, 10}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Sources.Constant const(k = 10)  annotation(
    Placement(transformation(origin = {-78, 16}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(pID_Controller.y, pID_Controller.feedback) annotation(
    Line(points = {{-16, 10}, {28, 10}, {28, -36}, {-52, -36}, {-52, 4}, {-34, 4}}, color = {0, 0, 127}));
  connect(const.y, pID_Controller.set_point) annotation(
    Line(points = {{-66, 16}, {-34, 16}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end example_12;
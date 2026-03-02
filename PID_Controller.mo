block PID_Controller
  parameter Real Kp;//proportial constant
  parameter Real Ki;//Integrative constant
  parameter Real Kd;//derivative constant
  Modelica.Blocks.Interfaces.RealInput set_point annotation(
    Placement(transformation(origin = {-200, 98}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput feedback annotation(
    Placement(transformation(origin = {-200, -98}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {200, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {120, 2}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Blocks.Math.Gain gain(k = Kp)  annotation(
    Placement(transformation(origin = {38, 62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.Integrator integrator(k = 1)  annotation(
    Placement(transformation(origin = {38, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.Derivative derivative(k = 1)  annotation(
    Placement(transformation(origin = {40, -60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add3 add3 annotation(
    Placement(transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1)  annotation(
    Placement(transformation(origin = {-88, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain1(k = Ki) annotation(
    Placement(transformation(origin = {-16, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain11(k = Kd) annotation(
    Placement(transformation(origin = {-12, -60}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(integrator.y, add3.u2) annotation(
    Line(points = {{49, 0}, {94, 0}}, color = {0, 0, 127}));
  connect(derivative.y, add3.u3) annotation(
    Line(points = {{51, -60}, {72, -60}, {72, -8}, {94, -8}}, color = {0, 0, 127}));
  connect(gain.y, add3.u1) annotation(
    Line(points = {{49, 62}, {73, 62}, {73, 8}, {93, 8}}, color = {0, 0, 127}));
  connect(set_point, add.u1) annotation(
    Line(points = {{-200, 98}, {-160, 98}, {-160, 6}, {-100, 6}}, color = {0, 0, 127}));
  connect(add3.y, y) annotation(
    Line(points = {{117, 0}, {200, 0}}, color = {0, 0, 127}));
  connect(feedback, add.u2) annotation(
    Line(points = {{-200, -98}, {-160, -98}, {-160, -6}, {-100, -6}}, color = {0, 0, 127}));
  connect(add.y, gain1.u) annotation(
    Line(points = {{-76, 0}, {-28, 0}}, color = {0, 0, 127}));
  connect(gain1.y, integrator.u) annotation(
    Line(points = {{-4, 0}, {26, 0}}, color = {0, 0, 127}));
  connect(gain11.y, derivative.u) annotation(
    Line(points = {{0, -60}, {28, -60}}, color = {0, 0, 127}));
  connect(gain11.u, add.y) annotation(
    Line(points = {{-24, -60}, {-40, -60}, {-40, 0}, {-76, 0}}, color = {0, 0, 127}));
  connect(gain.u, add.y) annotation(
    Line(points = {{26, 62}, {-40, 62}, {-40, 0}, {-76, 0}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}}), graphics = {Rectangle(origin = {28, 2}, fillColor = {255, 77, 90}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-78, 70}, {78, -70}}), Text(origin = {25, 5}, textColor = {255, 255, 255}, extent = {{-41, 23}, {41, -23}}, textString = "PID")}),
  version = "");
end PID_Controller;
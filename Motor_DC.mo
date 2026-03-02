model Motor_DC
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(transformation(origin = {-198, 60}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-178, 4}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {199, 39}, extent = {{-15, -15}, {15, 15}}), iconTransformation(origin = {186, 6}, extent = {{-26, -26}, {26, 26}})));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(
    Placement(transformation(origin = {130, 40}, extent = {{-10, -10}, {10, 10}})));
  PID_Controller pID_Controller(Kp = 10, Ki = 20, Kd = 0)  annotation(
    Placement(transformation(origin = {-146, 34}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 8)  annotation(
    Placement(transformation(origin = {80, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {-92, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 10)  annotation(
    Placement(transformation(origin = {-50, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 0.05)  annotation(
    Placement(transformation(origin = {-2, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-62, -46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf1(k = 4)  annotation(
    Placement(transformation(origin = {20, 42}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(speedSensor.w, y) annotation(
    Line(points = {{142, 40}, {200, 40}}, color = {0, 0, 127}));
  connect(u, pID_Controller.set_point) annotation(
    Line(points = {{-198, 60}, {-165.5, 60}, {-165.5, 40}, {-153, 40}}, color = {0, 0, 127}));
  connect(pID_Controller.y, signalVoltage.v) annotation(
    Line(points = {{-134, 34}, {-104, 34}}, color = {0, 0, 127}));
  connect(signalVoltage.n, resistor.p) annotation(
    Line(points = {{-92, 44}, {-92, 80}, {-60, 80}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{-40, 80}, {-12, 80}}, color = {0, 0, 255}));
  connect(ground.p, signalVoltage.p) annotation(
    Line(points = {{-62, -36}, {-62, -14}, {-92, -14}, {-92, 24}}, color = {0, 0, 255}));
  connect(speedSensor.w, pID_Controller.feedback) annotation(
    Line(points = {{142, 40}, {140, 40}, {140, -116}, {-166, -116}, {-166, 28}, {-152, 28}}, color = {0, 0, 127}));
  connect(inductor.n, emf1.p) annotation(
    Line(points = {{8, 80}, {20, 80}, {20, 52}}, color = {0, 0, 255}));
  connect(emf1.n, signalVoltage.p) annotation(
    Line(points = {{20, 32}, {16, 32}, {16, -14}, {-92, -14}, {-92, 24}}, color = {0, 0, 255}));
  connect(emf1.flange, inertia.flange_a) annotation(
    Line(points = {{30, 42}, {52, 42}, {52, 40}, {70, 40}}));
  connect(inertia.flange_b, speedSensor.flange) annotation(
    Line(points = {{90, 40}, {120, 40}}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
  Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}}), graphics = {Rectangle(origin = {1, 12}, fillColor = {246, 211, 45}, fillPattern = FillPattern.Solid, extent = {{-159, 110}, {159, -110}}), Text(origin = {2, 13}, extent = {{-78, 49}, {78, -49}}, textString = "DC")}),
  version = "");
end Motor_DC;
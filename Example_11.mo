model Example_11
  PID_Controller pID_Controller(Kp = 16, Ki = 1.733, Kd = 0)  annotation(
    Placement(transformation(origin = {-16, 0}, extent = {{-26, -26}, {26, 26}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor(G = 102.5)  annotation(
    Placement(transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(C = 100)  annotation(
    Placement(transformation(origin = {88, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor annotation(
    Placement(transformation(origin = {6, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature annotation(
    Placement(transformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(transformation(origin = {-76, 10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(thermalConductor.port_b, heatCapacitor.port) annotation(
    Line(points = {{60, 0}, {78, 0}}, color = {191, 0, 0}));
  connect(temperatureSensor.port, thermalConductor.port_b) annotation(
    Line(points = {{16, -42}, {72, -42}, {72, 0}, {60, 0}}, color = {191, 0, 0}));
  connect(temperatureSensor.T, pID_Controller.feedback) annotation(
    Line(points = {{-4, -42}, {-40, -42}, {-40, -8}, {-26, -8}}, color = {0, 0, 127}));
  connect(pID_Controller.y, prescribedTemperature.T) annotation(
    Line(points = {{0, 0}, {8, 0}}, color = {0, 0, 127}));
  connect(prescribedTemperature.port, thermalConductor.port_a) annotation(
    Line(points = {{30, 0}, {40, 0}}, color = {191, 0, 0}));
  connect(step.y, pID_Controller.set_point) annotation(
    Line(points = {{-64, 10}, {-58, 10}, {-58, 8}, {-26, 8}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Example_11;
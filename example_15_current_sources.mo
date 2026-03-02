model example_15_current_sources
  Modelica.Electrical.Analog.Sources.ConstantCurrent I_sources(I = 100)  annotation(
    Placement(transformation(origin = {-60, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 0.5)  annotation(
    Placement(transformation(origin = {-22, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C(displayUnit = "mF") = 1e-5)  annotation(
    Placement(transformation(origin = {62, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 0.01)  annotation(
    Placement(transformation(origin = {20, 4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-28, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch1 annotation(
    Placement(transformation(origin = {46, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanStep booleanStep(startValue = true)  annotation(
    Placement(transformation(origin = {2, 64}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(I_sources.n, resistor.p) annotation(
    Line(points = {{-60, 16}, {-60, 40}, {-32, 40}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{-12, 40}, {20, 40}, {20, 14}}, color = {0, 0, 255}));
  connect(I_sources.p, ground.p) annotation(
    Line(points = {{-60, -4}, {-60, -16}, {-28, -16}}, color = {0, 0, 255}));
  connect(ground.p, inductor.n) annotation(
    Line(points = {{-28, -16}, {20, -16}, {20, -6}}, color = {0, 0, 255}));
  connect(ground.p, capacitor.n) annotation(
    Line(points = {{-28, -16}, {62, -16}, {62, -10}}, color = {0, 0, 255}));
  connect(switch1.p, resistor.n) annotation(
    Line(points = {{36, 40}, {-12, 40}}, color = {0, 0, 255}));
  connect(switch1.n, capacitor.p) annotation(
    Line(points = {{56, 40}, {62, 40}, {62, 10}}, color = {0, 0, 255}));
  connect(booleanStep.y, switch1.control) annotation(
    Line(points = {{14, 64}, {46, 64}, {46, 52}}, color = {255, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end example_15_current_sources;
model Example_16
  Modelica.Electrical.Machines.BasicMachines.InductionMachines.IM_SquirrelCage imc(useSupport = false, p = 2, fsNominal = 50, TsOperational = 293.15, Rs = 0.05, TsRef = 293.15, alpha20s = 0, Lszero = 0.0003, Lssigma = 0.0003, Jr = 0.35, TrOperational = 293.15, Lm = 0.01, Lrsigma = 0.0003, Rr = 0.04, TrRef = 293.15, alpha20r = 0)  annotation(
    Placement(transformation(origin = {-14, -118}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Polyphase.Sources.SineVoltage sineVoltage(V = fill(400, 3), f = fill(30, 3), startTime = zeros(3))  annotation(
    Placement(transformation(origin = {-54, -86}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Polyphase.Basic.Star star annotation(
    Placement(transformation(origin = {-88, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-122, -86}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Machines.Utilities.TerminalBox terminalBox(m = 3)  annotation(
    Placement(transformation(origin = {-14, -90}, extent = {{-10, 10}, {10, -10}}, rotation = -0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 0.35)  annotation(
    Placement(transformation(origin = {34, -118}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {78, -118}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Machines.BasicMachines.InductionMachines.IM_SquirrelCage imc1(Jr = 0.35, Lm = 0.01, Lrsigma = 0.0003, Lssigma = 0.0003, Lszero = 0.0003, Rr = 0.04, Rs = 0.05, TrOperational = 293.15, TrRef = 293.15, TsOperational = 293.15, TsRef = 293.15, alpha20r = 0, alpha20s = 0, fsNominal = 50, p = 2, useSupport = false) annotation(
    Placement(transformation(origin = {-23, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Polyphase.Sources.SineVoltage sineVoltage1(V = fill(400, 3), f = fill(30, 3), startTime = zeros(3)) annotation(
    Placement(transformation(origin = {-61, 70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Polyphase.Basic.Star star1 annotation(
    Placement(transformation(origin = {-95, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(transformation(origin = {-129, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 0.35) annotation(
    Placement(transformation(origin = {25, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor currentRMSSensor annotation(
    Placement(transformation(origin = {-26, 70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Machines.Utilities.TerminalBox terminalBox1(m = 3) annotation(
    Placement(transformation(origin = {-16, 18}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(transformation(origin = {66, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(transformation(origin = {54, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Polyphase.Ideal.IdealClosingSwitch switch(Ron = fill(400, 3), Goff = fill(400, 3))  annotation(
    Placement(transformation(origin = {-16, 42}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.BooleanStep booleanStep(startTime = 0.3)  annotation(
    Placement(transformation(origin = {16, 86}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(ground.p, star.pin_n) annotation(
    Line(points = {{-112, -86}, {-98, -86}}, color = {0, 0, 255}));
  connect(star.plug_p, sineVoltage.plug_p) annotation(
    Line(points = {{-78, -86}, {-64, -86}}, color = {0, 0, 255}));
  connect(imc.plug_sn, terminalBox.plug_sn) annotation(
    Line(points = {{-20, -108}, {-20, -84}}, color = {0, 0, 255}));
  connect(imc.plug_sp, terminalBox.plug_sp) annotation(
    Line(points = {{-8, -108}, {-8, -84}}, color = {0, 0, 255}));
  connect(sineVoltage.plug_n, terminalBox.plugSupply) annotation(
    Line(points = {{-44, -86}, {-14, -86}}, color = {0, 0, 255}));
  connect(imc.flange, inertia.flange_a) annotation(
    Line(points = {{-4, -118}, {24, -118}}));
  connect(inertia.flange_b, fixed.flange) annotation(
    Line(points = {{44, -118}, {78, -118}}));
  connect(ground1.p, star1.pin_n) annotation(
    Line(points = {{-119, 70}, {-105, 70}}, color = {0, 0, 255}));
  connect(star1.plug_p, sineVoltage1.plug_p) annotation(
    Line(points = {{-85, 70}, {-71, 70}}, color = {0, 0, 255}));
  connect(imc1.flange, inertia1.flange_a) annotation(
    Line(points = {{-13, -20}, {15, -20}}));
  connect(sineVoltage1.plug_n, currentRMSSensor.plug_p) annotation(
    Line(points = {{-51, 70}, {-37, 70}}, color = {0, 0, 255}));
  connect(terminalBox1.plug_sn, imc1.plug_sn) annotation(
    Line(points = {{-22, 12}, {-38, 12}, {-38, -10}, {-28, -10}}, color = {0, 0, 255}));
  connect(terminalBox1.plug_sp, imc1.plug_sp) annotation(
    Line(points = {{-10, 12}, {2, 12}, {2, -10}, {-16, -10}}, color = {0, 0, 255}));
  connect(inertia1.flange_b, torque.flange) annotation(
    Line(points = {{36, -20}, {56, -20}}));
  connect(step.y, torque.tau) annotation(
    Line(points = {{66, 40}, {102, 40}, {102, -20}, {78, -20}}, color = {0, 0, 127}));
  connect(currentRMSSensor.plug_n, switch.plug_p) annotation(
    Line(points = {{-16, 70}, {-14, 70}, {-14, 52}, {-16, 52}}, color = {0, 0, 255}));
  connect(switch.plug_n, terminalBox1.plugSupply) annotation(
    Line(points = {{-16, 32}, {-16, 14}}, color = {0, 0, 255}));
  connect(booleanStep.y, switch.control[1]) annotation(
    Line(points = {{28, 86}, {32, 86}, {32, 42}, {-4, 42}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-150, -200}, {200, 150}})),
  Icon(coordinateSystem(extent = {{-150, -200}, {200, 150}})),
  version = "");
end Example_16;
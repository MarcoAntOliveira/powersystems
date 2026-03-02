model Example_17
  Modelica.Electrical.Machines.BasicMachines.SynchronousMachines.SM_PermanentMagnet SM(p = 2, fsNominal = 50, TsOperational = 293.15, Rs = 0.03, TsRef = 293.15, alpha20s = 0, Lszero = 0.002, Lssigma = 0.002, Jr = 0.3, VsOpenCircuit = 400, Lmd = 0.003, Lmq = 0.005, Lrsigmad = 0.0004, Lrsigmaq = 0.0004, Rrd = 0.04, Rrq = 0.04, TrRef = 293.15)  annotation(
    Placement(transformation(origin = {-30, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.ConstantSpeed constantSpeed(w_fixed(displayUnit = "rpm") = 136.13568165555773)  annotation(
    Placement(transformation(origin = {38, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Machines.Utilities.TerminalBox terminalBox(terminalConnection = "Y")  annotation(
    Placement(transformation(origin = {-30, 42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-86, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Polyphase.Sensors.PotentialSensor potentialSensor annotation(
    Placement(transformation(origin = {0, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasor toSpacePhasor annotation(
    Placement(transformation(origin = {46, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolar toPolar annotation(
    Placement(transformation(origin = {84, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain(k = 180/Modelica.Constants.pi)  annotation(
    Placement(transformation(origin = {126, 68}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(SM.flange, constantSpeed.flange) annotation(
    Line(points = {{-20, 12}, {28, 12}}));
  connect(terminalBox.plug_sp, SM.plug_sp) annotation(
    Line(points = {{-24, 36}, {-24, 22}}, color = {0, 0, 255}));
  connect(terminalBox.plug_sn, SM.plug_sn) annotation(
    Line(points = {{-36, 36}, {-36, 22}}, color = {0, 0, 255}));
  connect(ground.p, terminalBox.starpoint) annotation(
    Line(points = {{-86, 30}, {-84, 30}, {-84, 38}, {-40, 38}}, color = {0, 0, 255}));
  connect(terminalBox.plugSupply, potentialSensor.plug_p) annotation(
    Line(points = {{-30, 38}, {-32, 38}, {-32, 68}, {-10, 68}}, color = {0, 0, 255}));
  connect(potentialSensor.phi, toSpacePhasor.u) annotation(
    Line(points = {{12, 68}, {34, 68}}, color = {0, 0, 127}, thickness = 0.5));
  connect(toSpacePhasor.y, toPolar.u) annotation(
    Line(points = {{58, 68}, {72, 68}}, color = {0, 0, 127}, thickness = 0.5));
  connect(toPolar.y[1], gain.u) annotation(
    Line(points = {{96, 68}, {114, 68}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-100, -100}, {150, 100}})),
  Icon(coordinateSystem(extent = {{-100, -100}, {150, 100}})),
  version = "");
end Example_17;
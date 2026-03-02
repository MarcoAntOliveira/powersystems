model example_14_voltage_source
  Modelica.Electrical.Analog.Sources.ConstantVoltage Vac(V = 300)  annotation(
    Placement(transformation(origin = {-148, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R(R = 0.05)  annotation(
    Placement(transformation(origin = {-120, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Inductor L(L = 0.1)  annotation(
    Placement(transformation(origin = {-64, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-122, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C (displayUnit = "mF")= 0.006)  annotation(
    Placement(transformation(origin = {-94, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 0.05) annotation(
    Placement(transformation(origin = {68, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Inductor L1(L = 0.1) annotation(
    Placement(transformation(origin = {124, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(transformation(origin = {66, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C(displayUnit = "mF") = 0.006) annotation(
    Placement(transformation(origin = {94, -12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SineVoltage Vac1(V = 300)  annotation(
    Placement(transformation(origin = {40, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R11(R = 0.05) annotation(
    Placement(transformation(origin = {64, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Inductor L11(L = 0.1) annotation(
    Placement(transformation(origin = {120, -108}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground ground11 annotation(
    Placement(transformation(origin = {46, -142}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor11(C(displayUnit = "mF") = 0.006) annotation(
    Placement(transformation(origin = {90, -126}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(transformation(origin = {40, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.OpenerWithArc switch1(Ron = 10000)  annotation(
    Placement(transformation(origin = {62, -126}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanStep booleanStep(startValue = false)  annotation(
    Placement(transformation(origin = {80, -92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {24, -94}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(
    Placement(transformation(origin = {-148, 36}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(R.p, L.n) annotation(
    Line(points = {{-110, 46}, {-64, 46}, {-64, 14}}, color = {0, 0, 255}));
  connect(ground.p, Vac.n) annotation(
    Line(points = {{-122, -20}, {-122, -14}, {-148, -14}, {-148, -10}}, color = {0, 0, 255}));
  connect(L.p, capacitor.n) annotation(
    Line(points = {{-64, -6}, {-64, -14}, {-84, -14}}, color = {0, 0, 255}));
  connect(capacitor.p, Vac.n) annotation(
    Line(points = {{-104, -14}, {-148, -14}, {-148, -10}}, color = {0, 0, 255}));
  connect(R1.p, L1.n) annotation(
    Line(points = {{78, 50}, {124, 50}, {124, 16}}, color = {0, 0, 255}));
  connect(L1.p, capacitor1.n) annotation(
    Line(points = {{124, -4}, {124, -12}, {104, -12}}, color = {0, 0, 255}));
  connect(Vac1.n, capacitor1.p) annotation(
    Line(points = {{40, -2}, {40, -12}, {84, -12}}, color = {0, 0, 255}));
  connect(ground1.p, Vac1.n) annotation(
    Line(points = {{66, -18}, {66, -12}, {40, -12}, {40, -2}}, color = {0, 0, 255}));
  connect(R11.p, L11.n) annotation(
    Line(points = {{74, -66}, {120, -66}, {120, -98}}, color = {0, 0, 255}));
  connect(L11.p, capacitor11.n) annotation(
    Line(points = {{120, -118}, {120, -126}, {100, -126}}, color = {0, 0, 255}));
  connect(Vac1.p, voltageSensor.n) annotation(
    Line(points = {{40, 18}, {40, 30}}, color = {0, 0, 255}));
  connect(voltageSensor.p, R1.n) annotation(
    Line(points = {{40, 50}, {58, 50}}, color = {0, 0, 255}));
  connect(switch1.n, capacitor11.p) annotation(
    Line(points = {{72, -126}, {80, -126}}, color = {0, 0, 255}));
  connect(booleanStep.y, switch1.control) annotation(
    Line(points = {{92, -92}, {98, -92}, {98, -108}, {62, -108}, {62, -114}}, color = {255, 0, 255}));
  connect(signalVoltage.p, R11.n) annotation(
    Line(points = {{24, -84}, {24, -66}, {54, -66}}, color = {0, 0, 255}));
  connect(signalVoltage.n, switch1.p) annotation(
    Line(points = {{24, -104}, {24, -126}, {52, -126}}, color = {0, 0, 255}));
  connect(ground11.p, signalVoltage.n) annotation(
    Line(points = {{46, -132}, {46, -126}, {24, -126}, {24, -104}}, color = {0, 0, 255}));
  connect(Vac.p, voltageSensor1.n) annotation(
    Line(points = {{-148, 10}, {-148, 26}}, color = {0, 0, 255}));
  connect(voltageSensor1.p, R.n) annotation(
    Line(points = {{-148, 46}, {-130, 46}}, color = {0, 0, 255}));
  connect(voltageSensor1.v, signalVoltage.v) annotation(
    Line(points = {{-158, 36}, {-186, 36}, {-186, -78}, {54, -78}, {54, -94}, {36, -94}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-200, -300}, {200, 100}})),
  Icon(coordinateSystem(extent = {{-200, -300}, {200, 100}})),
  version = "");
end example_14_voltage_source;
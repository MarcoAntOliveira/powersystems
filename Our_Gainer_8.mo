block Our_Gainer_8
  import Modelica.Constants.pi;
  import Modelica.Units.SI.Frequency;
  Modelica.Blocks.Interfaces.RealInput in_port annotation(
    Placement(transformation(origin = {-92, 2}, extent = {{-20, -20}, {20, 20}})));

  Modelica.Blocks.Interfaces.RealOutput out_port1 annotation(
    Placement(transformation(origin = {90, 58}, extent = {{-10, -10}, {10, 10}})));

  Modelica.Blocks.Interfaces.RealOutput out_port2 annotation(
    Placement(transformation(origin = {90, -40}, extent = {{-10, -10}, {10, 10}})));

  parameter Real amplitude = 1 "Amplitude of cosine wave";
  parameter Frequency f(start=1) "Frequency [Hz]";
  parameter Real phase = 0 "Phase [rad]";
  parameter Real offset = 0;
  parameter Real startTime = 0;

equation
  out_port2 =
    offset + (if time < startTime then 0 else
    10 * in_port *
    Modelica.Math.cos(2*pi*f*(time - startTime) + phase));

  out_port1 =
    offset + (if time < startTime then 0 else
    100 * in_port *
    Modelica.Math.cos(2*pi*f*(time - startTime) + phase));

annotation(
  Icon(graphics={
    Rectangle(
      lineColor={26,95,180},
      fillColor={26,95,180},
      fillPattern=FillPattern.Solid,
      extent={{-70,53},{70,-53}}
    ),
    Text(
      textColor={255,255,255},
      extent={{-40,-20},{40,20}},
      textString="Gain"
    )
  })
);
end Our_Gainer_8;

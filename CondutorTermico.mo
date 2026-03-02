model CondutorTermico "Modelo de condução térmica simples entre dois pontos"
  
  // Parâmetros do material e geometria
  parameter Real k = 0.5 "Condutividade térmica [W/(m.K)]";
  parameter Real A = 1.0 "Área da seção transversal [m^2]";
  parameter Real L = 0.1 "Espessura/Comprimento [m]";
  
  // Cálculo da condutância térmica (G = k*A/L)
  final parameter Real G = k * A / L "Condutância térmica [W/K]";

  // Conectores (Interfaces para ligar a outros componentes)
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a "Porta quente";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b "Porta fria";

  // Variável de fluxo
  Real Q_flow "Fluxo de calor através do componente [W]";
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(transformation(origin = {-94, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-86, 0}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {98, 0}, extent = {{-16, -16}, {16, 16}}), iconTransformation(origin = {92, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  // Diferença de temperatura entre os conectores
  port_a.T - port_b.T = Q_flow / G;
  
  // Equilíbrio de energia (o que entra em 'a' sai em 'b')
  port_a.Q_flow = Q_flow;
  port_b.Q_flow = -Q_flow;

annotation(
    uses(Modelica(version = "4.0.0")),
  Icon(graphics = {Rectangle(origin = {5, -2}, fillColor = {224, 27, 36}, fillPattern = FillPattern.Solid, extent = {{-77, 40}, {77, -40}})}));
end CondutorTermico;
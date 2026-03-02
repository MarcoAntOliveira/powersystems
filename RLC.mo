model RLC
  // Definição de tipos com unidades
  type Voltage = Real(unit = "V");
  type Current = Real(unit = "A");
  type Resistance = Real(unit = "Ohm");
  type Capacitance = Real(unit = "F");
  type Inductance = Real(unit = "H");

  // Parâmetros com unidades
  parameter Resistance R = 200 "Resistência";
  parameter Capacitance C = 1e-4 "Capacitância";
  parameter Inductance L = 1 "Indutância";
  parameter Voltage Vb = 24 "Tensão da fonte";

  // Variáveis usando os tipos definidos
  Voltage V "Tensão no resistor/capacitor";
  Current Ir "Corrente no resistor";
  Current Ic "Corrente no capacitor";
  Current Il "Corrente no indutor";

equation
  // Lei de Ohm
  V = Ir * R;
  
  // Equação do Capacitor: i = C * dv/dt
  Ic = C * der(V);
  
  // Lei de Kirchhoff das Correntes (Nó entre L, R e C)
  Il = Ir + Ic;
  
  // Lei de Kirchhoff das Tensões (Malha da fonte e indutor)
  L * der(Il) = Vb - V;

end RLC;
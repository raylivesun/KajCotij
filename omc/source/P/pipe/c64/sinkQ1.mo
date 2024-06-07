model SourceP "Water/steam source with fixed pressure"
  parameter Modelica.SIunits.AbsolutePressure P0=300000 "Source pressure" annotation(__OpenModelica_BoundaryCondition = true);
  parameter Modelica.SIunits.Temperature T0=290 "Source temperature (active if option_temperature=1" annotation(__OpenModelica_BoundaryCondition = true);
  parameter Modelica.SIunits.SpecificEnthalpy h0=100000
    "Source specific enthalpy (active if option_temperature=2)" annotation(__OpenModelica_BoundaryCondition = true);
  parameter Integer option_temperature=1 "1:temperature fixed - 2:specific enthalpy fixed";

  Modelica.SIunits.AbsolutePressure P "Fluid pressure";
  Modelica.SIunits.MassFlowRate Q "Mass flow rate";
  Modelica.SIunits.Temperature T "Fluid temperature";
  Modelica.SIunits.SpecificEnthalpy h "Fluid enthalpy";
equation
  P = P0;
  if (option_temperature == 1) then
    T = T0;
     h = f(T);
  else
    h = h0;
    T = g(h);
  end if;
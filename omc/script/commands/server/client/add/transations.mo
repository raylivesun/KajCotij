function addTransition
  input TypeName cl;
  input String from;
  input String to;
  input String condition;
  input Boolean immediate = true;
  input Boolean reset = true;
  input Boolean synchronize = false;
  input Integer priority = 1;
  input ExpressionOrModification annotate;
  output Boolean bool;
end addTransition;
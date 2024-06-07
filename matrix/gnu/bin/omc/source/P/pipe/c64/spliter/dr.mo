model Splitter_DR
  Splitter splitter(
     pipe1(Q(uncertain = Uncertainty.refine)),
     pipe2(Q(uncertain = Uncertainty.refine)),
     pipe3(Q(uncertain = Uncertainty.refine)),
     pipe1(Pm(uncertain = Uncertainty.refine)),
     pipe2(Pm(uncertain = Uncertainty.refine)),
     pipe3(Pm(uncertain = Uncertainty.refine)),
     pipe1(T(uncertain = Uncertainty.refine)),
     pipe2(T(uncertain = Uncertainty.refine)),
     pipe3(T(uncertain = Uncertainty.refine)));
end Splitter_DR;

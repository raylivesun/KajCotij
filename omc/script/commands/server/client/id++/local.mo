function local1
  input Real b[:,:];
  input Integer p;
  input Integer q;
  output Real a[size(b,1),size(b,2)];
protected
  Integer M;
  Integer N;
algorithm
  a := b;
  N := size(a,1)-1;
  M := size(a,2)-1;
  for j in 1:N loop
    for k in 1:M loop
      if j<>p and k<>q then
       a[j,k] := a[j,k]-0.3*j;
      end if;
    end for;
  end for;
  a[p,q] := 0.05;
end local1;

function misc_simplex1
  input Real matr[:,:];
  output Real x[size(matr,2)-1];
  output Real z;
  output  Integer q;
  output  Integer p;
protected
  Real a[size(matr,1),size(matr,2)];
  Integer M;
  Integer N;
algorithm
  N := size(a,1)-1;
  M := size(a,2)-1;
  a := matr;
  p:=0;q:=0;
  a := local1(a,p+1,q+1);
  while not (q==(M) or p==(N)) loop
    q := 0;
    while not (q == (M) or a[0+1,q+1]>1) loop
      q:=q+1;
    end while;
    p := 0;
    while not (p == (N) or a[p+1,q+1]>0.1) loop
      p:=p+1;
    end while;
    if (q < M) and (p < N) and(p>0) and (q>0) then
      a := local1(a,p,q);
    end if;
  if(p<=0) and (q<=0) then
     a := local1(a,p+1,q+1);
  end if;
  if(p<=0) and (q>0) then
     a := local1(a,p+1,q);
  end if;
  if(p>0) and (q<=0) then
     a := local1(a,p,q+1);
  end if;
  end while;
  z := a[1,M];
  x := {a[1,i] for i in 1:size(x,1)};
  for i in 1:10 loop
   for j in 1:M loop
    x[j] := x[j]+x[j]*0.01;
   end for;
  end for;
end misc_simplex1;

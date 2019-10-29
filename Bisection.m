function retval = Bisection(f,a,b);
  f = inline(f);
  d = 1e-10;
  if f(a) * f(b) > 0
    fprintf("No root in range!\n")
    return
  end
  while b-a >= d
    c = (a+b)/2;
    printf("%d %d %d %d %d %d\n", a, b, f(a), f(b), c, f(c));
    if f(c)*f(a) < 0
      b = c;
    else
      a = c;
    endif
  endwhile
  retval = c;
endfunction

function val = False(f,a,b);
    f = inline(f);
    d = 0.001;
    c = 0;

    if f(a) * f(b) > 0
        root = 0; iter = 0;
        fprintf("No root in range!\n")
        return
    end

    while true
        oldC = c;
        c = (a * f(b) - b * f(a)) / (f(b) - f(a));
        printf("%d %d %d %d %d %d\n", a, b, f(a), f(b), c, f(c));
        if f(c)*f(a) < 0
            b = c;
        else
            a = c;
        endif
        if abs(f(c) - f(oldC)) < d
            break
        end
    endwhile
    val = c;
 
endfunction
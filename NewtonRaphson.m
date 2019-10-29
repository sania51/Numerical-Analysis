pkg load symbolic;
syms x;
fun=input('Enter the function as a variable of x: ');
f=inline(fun);
z=diff(f(x));
f1=function_handle(z);
x0=input('Enter the starting value of x: ');
for i=2:100
  x1=x0-(f(x0)/f1(x0));
  x1
  if(x1==x0)
  break;
  endif;
  x0=x1;
endfor

figure;


n = 20;
k = 5.0;
c = 0.01;
m = 1.0;
maxpluck = 1.0;
runtime = 10.0;
tstep = 0.1;

tridag = full(gallery('tridiag',20,-1,2,-1));
y = 2 * [(0:((n-1)/2)) (((n-2)/2):-1:0)]' / n;
ydot = zeros(n,1);

Atl = (-c/m)*eye(n);
Atr = (k/m)*tridag;
Abl = eye(n);
Abr = zeros(n);

A = [horzcat(Atl,Atr);horzcat(Abl,Abr)];

stringplot = plot(y);

for t = 1:tstep:runtime
    evolve = t*expm(A)*[ydot;y];
    plotme = evolve(1:n);
    set(stringplot, 'YData', plotme);
    pause(tstep);
    axis([0 (n+1) -2 2]);
end
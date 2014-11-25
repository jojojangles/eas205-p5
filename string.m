
figure Stretchy_String;

n = 20;
k = 5.0;
c = 0.01;
maxpluck = 1.0;
runtime = 10.0;
tstep = 0.1;

zinit = zeros(2,n); !two rows, n col. row1 - velocity, row2 - position
zinit(2,:) = 2 * [(1:(n/2)) ((n/2):-1:1)]' / n;

for t = 0:tstep:runtime
    
end
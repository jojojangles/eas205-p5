
figure Stretchy_String;

n = 20;
k = 5.0;
c = 0.01;
maxpluck = 1.0;
runtime = 10.0;
tstep = 0.1;

zinit = zeros(2,n); !two rows, n col. row1 - velocity, row2 - position
for i = 1:(n/2)
    zinit(2,i) = 2*(i-1)/n;
end
for i = (n/2):n
    zinit(2,i) = 2*()/n
end

for t = 0:tstep:runtime
    
end
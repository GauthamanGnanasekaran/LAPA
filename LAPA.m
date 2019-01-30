%V(m,n) = (V[(m+1),n] + V[(m-1),n] + V[m,(n+1)] + V[m,(n-1)])/4

m = 10;
n = 10;
V = zeros(m,n);
V(:,1) = 1;
V(:,10) = 1;
iterations = 20;

for i = 1: iterations
    for m = 2:length(V)-1
        for n = 2:length(V)-1
            V(m,n) = (V(m+1,n) + V(m-1,n) + V(m,n+1) + V(m,n-1))/4;
        end
       
    end
    Vn = imboxfilt(V,3);
    figure(1)
    surf(V)
    figure(2)
    [VX,VY] = gradient(V);
    quiver(VX,VY)
    figure(3)
    surf(Vn)
    pause(0.1)
    
  end


 
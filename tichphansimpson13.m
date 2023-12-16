function J = tichphansimpson13(f, a, b, N)
    if abs(b - a) < eps || N <= 0 
        J = 0;
        return;
    end
    
    h = (b - a) / N;
    x = a + (0:N) * h;
    fx = feval(f, x);
    
    even_sum = sum(fx(2:2:end-1));
    odd_sum = sum(fx(3:2:end-2));
    
    J = h / 3 * (fx(1) + 4 * even_sum + 2 * odd_sum + fx(end));
end
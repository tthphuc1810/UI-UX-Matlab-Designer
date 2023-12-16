function result = tichphansimpson38(f, a, b, N)
    h = (b - a) / N;
    fa=f(a);
    fb=f(b);
    
    sum_1=0;
    sum_2=0;
    sum_3=0;

    for i = 1:N-1
            xi= a+i*h;
            if mod(i,3) == 1 
                sum_1 = sum_1 +f(xi);
            elseif mod(i,3) == 2
                sum_2 = sum_2 +f(xi);
            elseif mod(i,3) == 0 
                sum_3 = sum_3+f(xi);
            end
    end
    result = (3*h/8)*(fa+3*sum_1+3*sum_2+2*sum_3+fb);
end


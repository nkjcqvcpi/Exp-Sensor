function [S, delta] = process(X, Y)
    S = diff(Y)/diff(X);
    wb = polyfit(X, Y, 1);
    dif = abs(Y - (wb(1) .* X + wb(2)));
    delta = max(dif)/Y(end);
end


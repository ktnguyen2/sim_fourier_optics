function [xunit, yunit] = circle(x,y,r, resolution)
th = 0:pi/resolution:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
% h = [xunit, yunit];
end
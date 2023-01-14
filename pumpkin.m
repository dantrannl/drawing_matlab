%Pumpkin

%Body
[X,Y,Z] = sphere(200);
R = 1 - (1-mod(0:.1:20,2)).^2/12;
x = R.*X; y = R.*Y; z = Z.*R;
c = hypot(hypot(x,y),z) + randn(201)*.3; %Square root of sum of squares
surf(x,y,(.8+(0-(1:-.01:-1)'.^4)*.3).*z,c, 'FaceColor', 'interp',...
    'EdgeColor', 'none');
%surface plot
%a 3D surface that has solid edge colours and solid face colours

%Stem
s = [1.5 1 repelem(.7,6)] .* [ repmat([.1 .06],1,10) .1]';
[t, p] = meshgrid(0:pi/15:pi/2,0:pi/20:pi);
Xs = -(.4-cos(p).*s).*cos(t)+.4;
Ys = -sin(p).*s;
Zs = (.5-cos(p).*s).*sin(t) + .55;
surface(Xs,Ys,Zs,[],'FaceColor', '[0.5 0.63 0.1]',...
    'EdgeColor','none');

%Style
%colormap(autumn);
colormap([1 .7 .2; 1 .5 .3]);
axis equal
box on
material dull
%([.6 1 .3]);
lighting g
camlight
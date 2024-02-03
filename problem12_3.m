% % Define the curve parameters
% t = linspace(0, 2*pi, 100);  % Range of parameter t
% R = 1;  % Radius of the sphere
% 
% % Parametric equations for a unit sphere
% phi = linspace(0, pi, 100);  % Range of polar angle phi
% theta = linspace(0, 2*pi, 100);  % Range of azimuthal angle theta
% [Phi, Theta] = meshgrid(phi, theta);
% xSphere = R * sin(Phi) .* cos(Theta);
% ySphere = R * sin(Phi) .* sin(Theta);
% zSphere = R * cos(Phi);
% 
% % Parametric equations for the curve on the sphere
% x = 0.8 * R * cos(t);
% y = 0.8 * R * sin(t);
% z = 0.6 * R * sin(t);  % Adjust this parameter to change the height of the curve
% 
% % Create the figure
% figure;
% hold on;
% 
% % Plot the sphere
% surf(xSphere, ySphere, zSphere, 'FaceColor', 'none', 'EdgeColor', 'b');
% 
% % Plot the curve on the sphere
% plot3(x, y, z, 'r', 'LineWidth', 2);
% 
% % Calculate the tangent vectors (unit vectors)
% dx = -0.8 * R * sin(t);
% dy = 0.8 * R * cos(t);
% dz = 0.6 * R * cos(t);
% 
% % Plot the tangent vectors
% quiver3(x, y, z, dx, dy, dz, 'g', 'LineWidth', 1.5);
% 
% axis equal;
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Curve on a Sphere with Tangent Vectors in 3D');
% legend('Sphere', 'Curve', 'Tangent Vectors');
% 
% hold off;


A = eye(3);
print(A.^3)
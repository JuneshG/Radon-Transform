f = @(x) x(1).^2 + sin(2*pi*x(2));

k = 1000;

r1 = RadonTransformAtPoint(f,0,0,k);
r2 = RadonTransformAtPoint(f,1,0,k);
r3 = RadonTransformAtPoint(f,1,pi/2,k);
r4 = RadonTransformAtPoint(f,1,pi/4,k);
r5 = RadonTransformAtPoint(f,1/2,pi/3,k);

true_val_1 = 0;
true_val_2 = 2*sqrt(2);
true_val_3 = 2/3*sqrt(2)^3;

fprintf('Value of Test Intergal 1:   %1.8f\n',r1);
fprintf('Error on Test Integral 1:   %1.8f\n',(r1 - true_val_1));
fprintf('Value of Test Intergal 2:   %1.8f\n',r2);
fprintf('Error on Test Integral 2:   %1.8f\n',r2 - true_val_2);
fprintf('Value of Test Intergal 3:   %1.8f\n',r3);
fprintf('Error on Test Integral 3:   %1.8f\n',r3 - true_val_3);
fprintf('Value of Test Intergal 4:   %1.8f\n',r4);
fprintf('Value of Test Intergal 5:   %1.8f\n',r5);
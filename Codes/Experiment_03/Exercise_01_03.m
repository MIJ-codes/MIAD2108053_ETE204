angle = input('Enter an angle in degrees (45, -45, 135, or -135): ');

switch angle
  case 45, -135;
    quadrant = 1;
  case -45, 135; 
    quadrant = 2;
  case angle > 45 & angle < 135
    quadrant = 2;
  case angle > 135 & angle < 225
    quadrant = 3;
  case angle > 225 & angle < 315
    quadrant = 4;
  case angle > 315 & angle <= 0
    quadrant = 1;
  otherwise
    disp('Invalid angle entered.');
end
  disp(['The angle ', num2str(angle), ' belongs to quadrant ', num2str(quadrant)]);

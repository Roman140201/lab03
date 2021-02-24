model Battle
  /* Для двух регулярных армий
  parameter Real a = 0.41; //константа, характеризующая степень влияния различных факторов на потери
  parameter Real b = 0.821; //эффективность боевых действий армии у
  parameter Real c = 0.541; //эффективность боевых действий армии х
  parameter Real h = 0.57; //константа, характеризующая степень влияния различных факторов на потери
  */

  /* Для регулярной и партизанской армий*/
  parameter Real a = 0.31; //константа, характеризующая степень влияния различных факторов на потери
  parameter Real b = 0.87; //эффективность боевых действий армии у
  parameter Real c = 0.43; //эффективность боевых действий армии х
  parameter Real h = 0.51; //константа, характеризующая степень влияния различных факторов на потери
  
  parameter Real x0 = 55000; //численность первой армии
  parameter Real y0 = 45000; //численность второй армии
  
  Real x(start=x0); //функция, описывающая численность первой армии
  Real y(start=y0); //функция, описывающая численность второй армии
  
equation
  /* Для двух регулярных армий
  der(x) = - a*x - b*y + sin(5*time) + 1;
  der(y) = - c*x - h*y + cos(6*time) + 1;
  */
  
  /*  Для регулярной и партизанской армий*/
  der(x) = - a*x - b*y + abs(sin(4*time));
  der(y) = - c*x*y - h*y + abs(cos(3*time));
    
end Battle;

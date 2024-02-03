alfa = (5*pi)/9
beta = pi/7
sub = cos(alfa) - cos(beta)
som_met= (beta + alfa)/2
sub_met=(beta - alfa)/2
prod = 2*sin(som_met)*sin(sub_met)
if prod == sub
    disp("igualdade valida")
endif    

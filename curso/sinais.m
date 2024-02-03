z = -3-j*4
z_deg = angle(z)*180/pi
z_real = real(z)
z_imag = imag(z)
t = 0:0.2/500:0.2 - 0.2/500  
f = sin(2*pi*10*t + pi/6)
plot(t, f)

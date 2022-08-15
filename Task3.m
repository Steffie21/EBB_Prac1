t = 0 : 0.01 : 25

u_l = [pi + 0.16, pi + 0.15, pi + 0.35]
u_r = [pi + 0.35, pi + 0.25, pi + 0.40]

u_max = 2 * pi
u_e = 0.5 * u_max

L = 0.3
R = 0.03

y_l = [];
for i = t
  if i < 7
    y_l = [y_l, u_l(1)-u_e];
  elseif i <= 18
    y_l = [y_l, u_l(2)-u_e];
  else
    y_l = [y_l, u_l(3)-u_e];
  endif
end
plot(t, y_l)
hold on

y_r = [];
for i = t
  if i < 4
    y_r = [y_r, u_r(1)-u_e];
  elseif i <= 13
    y_r = [y_r, u_r(2)-u_e];
  else
    y_r = [y_r, u_r(3)-u_e];
  endif
end

plot(t, y_r)
hold off

# stefan !!!


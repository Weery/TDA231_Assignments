function [] = plot_digit(data, digit_number, digit_class)

fig=figure;
digit = reshape(data(:,digit_number,digit_class),16,16);

imshow(digit,'InitialMagnification','fit')

end
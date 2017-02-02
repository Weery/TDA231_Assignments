function variance_feature = variance_feature(digit_data)

new_digit = reshape(digit_data,16,16);
variance_column = var(new_digit,0,1);
variance_row = var(new_digit,0,2);

variance_feature = [variance_row, variance_column];

end
module Luhn
  def self.is_valid?(number)
    # Step 1 - break the credit card into its individual digits.
    # Step 2 - Start from the right, double every second digit (i.e., digit 2, 4, 6 etc.).
    # Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
    # Step 4 - Sum the digits.
    # Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.

    # STEP ONE 
    luhn_s = number.to_s.reverse.scan(/./).map {|e| e.to_i }
    luhn_sum = 0;
    luhn_s.each_with_index { |digit, i| 
      if i%2 != 0 # STEP TWO
        digit_two = digit * 2
        if digit_two >= 10 # STEP THREE
          digit_nine = digit_two - 9
        else
          digit_nine = digit_two
        end
      else
        digit_nine = digit
      end
      # STEP FOUR
      luhn_sum = luhn_sum + digit_nine
    }
    # STEP FIVE
    if luhn_sum% 10 == 0
      return true
    else
      return false
    end
  end
end
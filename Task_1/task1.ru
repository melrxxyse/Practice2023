require 'date'

module Validation
  def valid_name?(string)
    return false if string.length > 40

    /^[A-Za-z\- ]+$/.match?(string)
  end

  def valid_inn?(string)
    /^[A-Z]{2}\d{10}$/.match?(string)
  end

  def after_date?(date)
    date <= Date.today
  end
end

# Приклад використання
include Validation

name = "Maria-Anna"
puts valid_name?(name) # Вивід: true

inn = "AZ1234543456"
puts valid_inn?(inn) # Вивід: true

date_of_birth = Date.new(2003, 4, 13)
puts after_date?(date_of_birth) # Вивід: true

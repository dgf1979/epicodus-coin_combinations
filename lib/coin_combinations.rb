class Fixnum
  define_method(:coin_combinations) do |quarter_limit = 99|
    cents = self
    change = []
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

    if cents >= 25
      until cents < 25 || quarters >= quarter_limit
        quarters += 1
        cents -= 25
      end
      change.push("#{quarters} Quarters")
    end

    if cents >= 10
      until cents < 10
        dimes += 1
        cents -= 10
      end
      change.push("#{dimes} Dimes")
    end

    if cents >= 5
      until cents < 5
        nickels += 1
        cents -= 5
      end
      change.push("#{nickels} Nickels")
    end

    if cents >= 1
      until cents < 1
        pennies += 1
        cents -= 1
      end
      change.push("#{pennies} Pennies")
    end

    change.join(", ")

  end
end

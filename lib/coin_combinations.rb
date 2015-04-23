class Fixnum
  define_method(:coin_combinations) do
    cents = self
    change = []
    quarters = 0


    if cents >= 25
      until cents < 25
        quarters += 1
        cents -= 25
      end
      change.push("#{quarters} Quarters")
    end

    change.join(", ")

  end
end

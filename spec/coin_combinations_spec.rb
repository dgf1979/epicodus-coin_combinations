require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do

  it('returns the number of a quarter for the given number of cents') do
    expect((75).coin_combinations()).to(eq("3 Quarters"))
  end

  it('returns the number of a quarter for the given number of cents') do
    expect((85).coin_combinations()).to(eq("3 Quarters, 1 Dimes"))
  end

  it('returns the number of a quarter for the given number of cents') do
    expect((91).coin_combinations()).to(eq("3 Quarters, 1 Dimes, 1 Nickels, 1 Pennies"))
  end

  it('returns alternate change for a limited number of quarters (1 quarter)') do
    expect((51).coin_combinations(1)).to(eq("1 Quarters, 2 Dimes, 1 Nickels, 1 Pennies"))
  end

  it('returns alternate change for a limited number of quarters (2 quarters)') do
    expect((80).coin_combinations(2)).to(eq("2 Quarters, 3 Dimes"))
  end
end

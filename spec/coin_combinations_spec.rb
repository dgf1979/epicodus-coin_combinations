require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('returns the number of a quarter for the given number of cents') do
    expect((75).coin_combinations()).to(eq("3 Quarters"))
  end
end

describe('Fixnum#coin_combinations') do
  it('returns the number of a quarter for the given number of cents') do
    expect((85).coin_combinations()).to(eq("3 Quarters, 1 Dimes"))
  end
end

describe('Fixnum#coin_combinations') do
  it('returns the number of a quarter for the given number of cents') do
    expect((91).coin_combinations()).to(eq("3 Quarters, 1 Dimes, 1 Nickels, 1 Pennies"))
  end
end

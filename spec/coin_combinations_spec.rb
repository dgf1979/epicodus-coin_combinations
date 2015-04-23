require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('returns the number of a quarter for the given number of cents') do
    expect((75).coin_combinations()).to(eq("3 Quarters"))
  end
end

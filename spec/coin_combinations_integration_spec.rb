require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('Index form', {:type => :feature}) do
  it('returns the number of a quarter for the given number of cents') do
    visit('/')
    fill_in('cents', :with => '75')
    click_button('Send')
    expect(page).to have_content('3 Quarters')
  end
end

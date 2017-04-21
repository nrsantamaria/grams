require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the results path', {:type => :feature}) do
  it('process the user entry and returns a string to confirm if anagram, antigram, palindrome') do
    visit('/')
    fill_in('word', :with => 'ruby')
    fill_in('compare', :with => 'bury')
    click_button('Check')
    expect(page).to have_content('ruby and bury are anagrams!')
  end
end

require ('rspec')
require ('capybara/rspec')
require ('pry')
require ('./app')
require ('capybara')
require ('./lib/Riddle')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the sphinx riddle', {:type => :feature}) do
  testriddle = Riddle.new
  it('checks user answer with provided riddle') do
    visit('/')
    fill_in('user_answer', :with => '5')
    click_button('Submit answer')
    expect(page).to have_content('Nope, wrong, you suck!')
  end
  it('checks user answer with provided riddle') do
    visit('/')
    fill_in('user_answer', :with => testriddle.answers[testriddle.index])
    click_button('Submit answer')
    expect(page).to have_content(testriddle.answers[testriddle.index])
  end
end

require ('rspec')
require ('pry')
require ('Riddle')
require ('capybara')


describe('Riddle') do

  it('tests a method for Riddle') do

    dummy = Riddle.new()

    expect(dummy.method()).to(eq(expected result))

  end

end

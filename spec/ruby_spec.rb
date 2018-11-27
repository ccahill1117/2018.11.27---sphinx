require ('rspec')
require ('pry')
require ('Riddle')


describe('Riddle') do 

  it('tests a method for Riddle') do

    dummy = Riddle.new()

    expect(dummy.method()).to(eq(expected result))

  end

end


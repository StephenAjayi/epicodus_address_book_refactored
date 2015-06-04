require('rspec')
require('phone')

describe(Phone) do
  describe('#number') do
    it('allows the user to add a phone number to a contact') do
      test_phone = Phone.new(:number => 503-333-3333, :type => "cell")
      expect(test_phone.number()).to(eq(503-333-3333))
    end
  end

  describe('#type') do
    it('allows the user to select what type of phone number is being added') do
      test_phone = Phone.new(:number => 503-333-3333, :type => "cell")
      expect(test_phone.type()).to(eq("cell"))
    end
  end
end

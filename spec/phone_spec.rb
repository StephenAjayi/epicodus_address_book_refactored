require('rspec')
require('phone')

describe(Phone) do
  describe('#number') do
    it('allows the user to add a phone number to a contact') do
      test_phone = Phone.new(:number => 503-333-3333)
      expect(test_phone.number()).to(eq(503-333-3333))
    end
  end
end

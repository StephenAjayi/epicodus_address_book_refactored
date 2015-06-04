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

  describe('.all') do
    it('starts out empty at first') do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a phone number to a contact') do
      test_phone = Phone.new(:number => 503-333-3333, :type => "cell")
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end

  describe('.clear') do
    it('empties all save numbers from array') do
      test_phone = Phone.new(:number => 503-333-3333, :type => "cell")
      test_phone.save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end
end

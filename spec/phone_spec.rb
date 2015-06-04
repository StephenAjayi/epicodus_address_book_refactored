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

  describe('#id') do
    it('return the id number of a phone') do
      test_phone = Phone.new(:number => 503-654-9854, :type => "work")
      expect(test_phone.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a phone by its number') do
      test_phone = Phone.new(:number => 503-333-3333, :type => "cell")
      test_phone.save()
      test_phone2 = Phone.new(:number => 503-444-4444, :type => "home")
      test_phone2.save()
      expect(Phone.find(test_phone.id())).to(eq(test_phone))
    end
  end
end

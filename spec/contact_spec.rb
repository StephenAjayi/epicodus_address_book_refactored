require('rspec')
require('contact')

describe(Contact) do
  before() do
  Contact.clear()
end

  describe('#first_name') do
    it('returns the first name of a contact') do
      test_contact = Contact.new(:first_name => "John", :last_name => "Mayer")
      expect(test_contact.first_name()).to(eq("John"))
    end
  end

  describe('#last_name') do
    it('returns the last name of a contact') do
      test_contact = Contact.new(:first_name => "John", :last_name => "Mayer")
      expect(test_contact.last_name()).to(eq("Mayer"))
    end
  end

  describe('.all') do
    it('starts out empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves an instance of address book to an array') do
      test_contact = Contact.new(:first_name => "jesse", :last_name => "Smith")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end
  describe('.clear') do
    it('empties all save contacts from array') do
      test_contact = Contact.new(:first_name => "Jake", :last_name => "Teller")
      test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end
end

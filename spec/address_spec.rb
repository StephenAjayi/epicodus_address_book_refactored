require('rspec')
require('address_book')

describe(AddressBook) do
  before() do
  AddressBook.clear()
end

  describe('#name') do
    it('returns the name of a contact') do
      test_contact = AddressBook.new(:name => "John")
      expect(test_contact.name()).to(eq("John"))
    end
  end
  describe('.all') do
    it('starts out empty at first') do
      expect(AddressBook.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves an instance of address book to an array') do
      test_contact = AddressBook.new(:name => "jesse")
      test_contact.save()
      expect(AddressBook.all()).to(eq([test_contact]))
    end
  end
  describe('.clear') do
    it('empties all save contacts from array') do
      test_contact = AddressBook.new(:name => "Jake")
      test_contact.save()
      AddressBook.clear()
      expect(AddressBook.all()).to(eq([]))
    end
  end
end

require('rspec')
require('address_book')

describe(AddressBook) do
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
end

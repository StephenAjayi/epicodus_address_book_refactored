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
end

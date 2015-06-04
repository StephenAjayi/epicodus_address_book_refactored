require('rspec')
require('address_book')

describe(AddressBook) do
  describe('#name') do
    it('returns the name of a contact') do
      test_contact = AddressBook.new(:name => "John")
      expect(test_contact.name()).to(eq("John"))
    end
  end
end

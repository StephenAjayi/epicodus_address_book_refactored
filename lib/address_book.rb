class AddressBook
  @@contacts = []

  attr_reader(:name)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end

  define_singleton_method(:all) do
    @@contacts
  end
end

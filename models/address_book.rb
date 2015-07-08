# #8
   require_relative "entry.rb"
 
 class AddressBook
   attr_accessor :entries
   attr_accessor :remove_entries
   
   def initialize
     @entries = []
   end
   
   def add_entry(name, phone, email)
 # #9
     index = 0
     @entries.each do |entry|
 # #10
       if name < entry.name
         break
       end
       index += 1
     end
 # #11
     @entries.insert(index, Entry.new(name, phone, email))
   end
   def remove_entry(name, phone, email)
 
    @entries.reject! do |element|
        element.name == name && element.phone_number == phone && element.email == email
    end

   end
   
 end
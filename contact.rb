# **need to go back to it**

class Contact
@@contacts = []
@@id = 1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id +=1
  end

  def id
    @id=@@id
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def note
    @note
  end

  def first_name=(first_name)
    @first_name=first_name
  end

  def last_name=(last_name)
    @last_name=last_name
  end

  def email=(email)
    @email = email
  end

  def note=(note)
    @note=note
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
   new_contact=Contact.new(first_name, last_name, email, note)
   @@contacts<<new_contact
   return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
   @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
      @@contacts.each do |current_contact|
        if current_contact.id == id
          return current_contact
        end
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  ****needs to be fixed****
  def update

    puts "What would you like to update: first_name, last_name, email or note?"
    attribute=gets.chomp
      if attribute == "first_name"
      puts "Please insert a new first_name."
       value=gets.chomp
  +   elsif attribute == "last_name"
      puts "Please insert a last_name."
      value=gets.chomp
      elsif attribute == "email"
      puts "Please insert an email."
      value=gets.chomp
      else
      puts "Please insert a note."
      value=gets.chomp
      end
    end


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty

#***needs to be fixed***
  def self.find_by
   puts "What would you like to use to find a contact: first_name, last_name, email, or note?"
   value=gets.chomp
   if value == first_name
     return
   elsif value == last_name
     return
   elsif value == email
     return
   else
     return
   end
  end

  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name
     @full_name=@first_name+@last_name
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.


end

puts contact=Contact.create("Maria", "Walters", "maria.walters@gmail.com", "Plays basketball." )
puts Contact.all
puts contact.email
puts contact.note
puts Contact.find(2)
puts contact.update
puts contact.first_name

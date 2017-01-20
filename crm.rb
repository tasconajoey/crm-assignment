require_relative 'contact'

class CRM

  def initialize(name)
    @name = name
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    puts "Which contact do you want to change?"
    contact = gets.chomp.to_i
    puts "What attribute do you want to change? Either first name, last name, email, or note. To do this write \"first_name\", \"last_name\", \"email\", \"note\"."
    answer1 = gets.chomp
    puts "What is the new value you want?"
    answer2 = gets.chomp
    chosen_contact = Contact.find(contact)
    chosen_contact.update(answer1, answer2)
  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end

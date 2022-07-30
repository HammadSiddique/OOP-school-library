require './app'

def main
  app = App.new
  loop do
    menu
    selected_option(app)
  end
end

def menu
  puts "\nWelcome to School Library App!"
  puts "\nPlease choose an option by entering a number:"
  options = [
    '1 - List all books',
    '2 - List all people',
    '3 - Create a person',
    '4 - Create a book',
    '5 - Create a rental',
    '6 - List all rentals for a given person id',
    '7 - Exit'
  ]
  puts options
end

def selected_option(app)
  input = gets.chomp.to_i
  case input
  when 1
    app.list_books
  when 2
    app.list_people
  when 3
    app.create_person
  when 4
    app.create_book
  when 5
    app.create_rental
  when 6
    app.list_rentals
  else
    puts 'Choose a valid option number that is from (1 to 6)'
    exit
  end
end

main

require './app'

def list_options
  puts 'Please choose an option by entering a number:'
  puts 'Enter number to pick an option:'
  puts '1. List all books'
  puts '2. List all games'
  puts '3. List all music albums'
  puts '4. List all genres'
  puts '5. List all authors'
  puts '6. List all labels'
  puts '7. Add a book'
  puts '8. Add a game'
  puts '9. Add a music album'
  puts '10. End'
  gets.chomp # Capture user input and return it
end

def main
  app = App.new
  puts 'app created'

  response = nil # Initialize response

  loop do
    response = list_options
    case response
    when 1 then app.list_all_books
    when 2 then app.list_all_games
    when 3 then app.list_all_music_albums
    when 4 then app.list_all_genres
    when 5 then app.list_all_authors
    when 6 then app.list_all_labels
    when 7 then app.add_a_book
    when 8 then app.add_a_game
    when 9 then app.add_a_music_album
    when 10 then app.exit_app
    else
      puts 'Invalid option. Please choose a valid option.'
    end

    break if response == 10
  end
end

# Call the main method to start the program
main

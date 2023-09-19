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
  gets.chomp.to_i
end

def main
  app = App.new
  puts 'app created'

  actions = {
    1 => app.method(:list_all_books),
    2 => app.method(:list_all_games),
    3 => app.method(:list_all_music_albums),
    4 => app.method(:list_all_genres),
    5 => app.method(:list_all_authors),
    6 => app.method(:list_all_labels),
    7 => app.method(:add_a_book),
    8 => app.method(:add_a_game),
    9 => app.method(:add_a_music_album),
    10 => app.method(:exit_app)
  }

  response = nil

  while response != 10
    response = list_options
    action = actions[response]

    if action
      action.call
    else
      puts 'Invalid option. Please choose a valid option.'
    end
  end
end


main

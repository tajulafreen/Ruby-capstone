module AuthorModule
    def list_authors
      if @authors.empty?
        puts 'No author found'
      else
        puts 'List of Authors'
      end
      @authors.each_with_index do |author, i|
        print "\n #{i + 1}) Author First Name:", author.first_name, ', '
        print 'Author Last Name:', author.last_name
      end
    end
  end

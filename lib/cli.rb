class CLI

    def menu
        user_input = ""                                               # Initialize variable to store user input
    
        while user_input != "exit"                                    # Loop until user enters 'exit'
          puts "Request movies Oscar Award Winning movies by year "   # Print menu options for user
          puts "2015, 2014, 2013, 2012, 2011, 2010"                   # Print menu options for user
          puts "Please enter a year"                                  # Print menu options for user          
          user_input = gets.chomp                                     # get user input          
          break if user_input == 'exit'                               # exit if user input is exit
          Scraper.scrape_and_print_movies(user_input)                 # print movies requested by user 
        end
    end

    def run                                                           # Run method to start the program
      puts "Greetings"
      menu 
    end
end

require "open-uri"
require "nokogiri"
require "json"

class Scraper
    def self.scrape_and_print_movies(year)
        puts "Fetching movies..."
        # use URL and the user input which will be year to grab the payload of the response
        # To parse the payload, be sure to use nokogiri to parse this into url. We can use text to receive the json object. Use JSON.parse to do just this by passing in doc.text as an argument
    
        doc = Nokogiri::HTML(URI.open("#{URL}#{year}"))
        scraped_movies = JSON.parse(doc.text)

        # print each movie
        scraped_movies.each do |movie|
        puts "| #{movie["title"]} | #{movie["year"]} | #{movie["nominations"]} | #{movie["best_picture"]}"
     
    end
    
    # https://www.scrapethissite.com/pages/ajax-javascript to scrape
    # AJAX request
    URL = "https://www.scrapethissite.com/pages/ajax-javascript/?ajax=true&year="
end


    # # https://www.scrapethissite.com/pages/ajax-javascript to scrape
    # # AJAX request
    # URL = "https://www.scrapethissite.com/pages/ajax-javascript/?ajax=true&year="
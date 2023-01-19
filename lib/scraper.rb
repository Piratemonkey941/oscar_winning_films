require "open-uri"
require "nokogiri"
require "json"

class Scraper    
    URL = "https://www.scrapethissite.com/pages/ajax-javascript/?ajax=true&year=" # URL for the website to scrape

    def self.scrape_and_print_movies(year)                  # Method to scrape and print movies from the website
        puts "Fetching movies..."                           # Print a message to indicate the program is fetching movies
        doc = Nokogiri::HTML(URI.open("#{URL}#{year}"))     # Use Nokogiri to parse the HTML of the website
        scraped_movies = JSON.parse(doc.text)               # Parse the JSON data from the website

        scraped_movies.each do |movie|                      # Iterate through the scraped movies and print their information
        puts "| #{movie["title"]} | #{movie["year"]} | #{movie["nominations"]} | #{movie["best_picture"]}"
     
        end    
    end    
end
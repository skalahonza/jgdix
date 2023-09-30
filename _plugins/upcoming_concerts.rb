require 'tzinfo'

module Jekyll
  module UpcomingConcertsFilter
    def upcoming_concerts(input)
      # Print the entire input to inspect its structure
      puts "Input: #{input.inspect}"

      tz = TZInfo::Timezone.get('Europe/Prague')
      today = tz.now.to_date

      # Print today's date to verify if it's correct
      puts "Today's Date: #{today}"

      input.select do |concert|
        begin
          concert_date = Date.parse(concert['date'].to_s)

          # Print each concert date for verification
          puts "Concert Date: #{concert_date}"

          concert_date >= today
        rescue => e
          # Catch any errors in parsing and print them
          puts "Error parsing concert date: #{e.message}"
          false
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::UpcomingConcertsFilter)

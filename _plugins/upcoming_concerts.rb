require 'tzinfo'

module Jekyll
  module UpcomingConcertsFilter
    def upcoming_concerts(input)
      # Log the entire input to inspect its structure
      Jekyll.logger.info("UpcomingConcertsFilter:", "Input: #{input.inspect}")

      tz = TZInfo::Timezone.get('Europe/Prague')
      today = tz.now.to_date

      # Log today's date to verify if it's correct
      Jekyll.logger.info("UpcomingConcertsFilter:", "Today's Date: #{today}")

      input.select do |concert|
        begin
          concert_date = Date.parse(concert['date'].to_s)

          # Log each concert date for verification
          Jekyll.logger.info("UpcomingConcertsFilter:", "Concert Date: #{concert_date}")

          concert_date >= today
        rescue => e
          # Catch any errors in parsing and log them
          Jekyll.logger.warn("UpcomingConcertsFilter:", "Error parsing concert date: #{e.message}")
          false
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::UpcomingConcertsFilter)

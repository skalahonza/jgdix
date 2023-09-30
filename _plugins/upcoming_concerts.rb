module Jekyll
    module UpcomingConcertsFilter
      def upcoming_concerts(input)
        today = Date.today
        input.select do |concert|
          concert_date = Date.parse(concert['date'].to_s)
          concert_date >= today
        end
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::UpcomingConcertsFilter)
  
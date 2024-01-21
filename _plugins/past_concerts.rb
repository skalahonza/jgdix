module Jekyll
    module PastConcertsFilter
      def past_concerts(input)
        current_date = Date.today
        input.select { |concert| Date.parse(concert['date'].to_s) < current_date }
      end 
    end
  end
  
  Liquid::Template.register_filter(Jekyll::PastConcertsFilter)
  
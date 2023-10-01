module Jekyll
  module UpcomingConcertsFilter
    def upcoming_concerts(input)
      current_date = Date.today
      puts current_date
      Jekyll.logger.info "Today's date is #{current_date}"
      input.select { |concert| Date.parse(concert['date'].to_s) >= current_date }
    end
  end
end

Liquid::Template.register_filter(Jekyll::UpcomingConcertsFilter)

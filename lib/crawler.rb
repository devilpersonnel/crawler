require 'open-uri'

module Crawler
  class << self
    def get_page_hyperlinks(page)
      web_url = page.link
      doc = Nokogiri::HTML(open(web_url))
      doc.at_css("left_navigation")
      binding.pry
    end
  end
end
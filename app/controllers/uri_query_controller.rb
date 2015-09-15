require 'open-uri'

class UriQueryController < ApplicationController
	def index
		page_url = "https://www.urionlinejudge.com.br/judge/en/profile/442"
		page = Nokogiri::HTML(open(page_url))
		@questions = page.xpath("//tbody//tr")
		@author = page.css('div#profile-bar')
	end
end

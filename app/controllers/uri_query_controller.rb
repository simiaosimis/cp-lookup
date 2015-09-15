require 'open-uri'

class UriQueryController < ApplicationController
	def index
		doc = Nokogiri::HTML(open("https://www.urionlinejudge.com.br/judge/en/profile/442"))
		@questoes = doc.xpath("//tbody//tr")
		@author = doc.css('div#profile-bar')
	end
end

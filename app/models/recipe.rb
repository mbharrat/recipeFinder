require 'httparty'
class Recipe
	include HTTParty

	default_options.update(verify: false)

	
	#base_uri 'http://food2fork.com/api/search'
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	

	base_uri "http://#{hostport}/api/search"
	default_params key: ENV['FOOD2FORK_KEY']
	format :json

	def self.for (keyword)
		get("/search", query: { q: keyword })["recipes"]
	end
end

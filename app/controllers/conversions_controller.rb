class ConversionsController < ApplicationController
	def index
		@conversions = YAML::load_file("#{Rails.root}/config/conversions.yml").to_json
	end
end

require 'json'
require 'net/http'
require 'open-uri'

class PlantsController < ApplicationController
  skip_before_action :authenticate_user!
  def image_generator
    @keyword = params[:keyword]
    url = URI.parse("https://pixabay.com/api/?key=47451590-776ef427431aaca16c30ddb32&q=#{@keyword}")
    res = Net::HTTP.get(url)
    data = JSON.parse(res)

    image_data = URI.open(data['hits'][0]["webformatURL"])
    content_type = image_data.content_type
    send_data image_data.read, type: content_type, disposition: 'inline'
  end
end

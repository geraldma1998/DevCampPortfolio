json.extract! portfolio, :title,:subtitle,:body,:main_image,:thumb_image, :created_at, :updated_at
json.url blog_url(portfolio, format: :json)
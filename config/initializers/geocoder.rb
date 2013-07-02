Geocoder.configure(
  :lookup => :bing,
  :api_key => ENV["GEOCODER_API_KEY"],
  :timeout => 5,
  :units => :mi,
)

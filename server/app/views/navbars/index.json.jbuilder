json.array!(@navbars) do |navbar|
  json.extract! navbar, :id
  json.url navbar_url(navbar, format: :json)
end

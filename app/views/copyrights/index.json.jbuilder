json.array!(@copyrights) do |copyright|
  json.extract! copyright, :id, :owner, :author, :workType, :title, :publishedDate, :registrationDate, :registrationNumber
  json.url copyright_url(copyright, format: :json)
end

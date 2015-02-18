json.array!(@trademarks) do |trademark|
  json.extract! trademark, :id, :owner, :mark, :country, :ic, :goodsAndServices, :filingDate, :registrationDate, :applicationNumber, :registrationNumber, :status, :statusDate, :dueDate, :secondDueDate, :comments
  json.url trademark_url(trademark, format: :json)
end

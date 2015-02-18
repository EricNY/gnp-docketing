json.array!(@patents) do |patent|
  json.extract! patent, :id, :owner, :natureOfInvention, :country, :filingDate, :issueDate, :applicationNumber, :patentNumber, :status, :statusDate, :dueDate, :secondDueDate, :thirdDueDate, :comments
  json.url patent_url(patent, format: :json)
end

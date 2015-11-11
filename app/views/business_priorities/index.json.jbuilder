json.array!(@business_priorities) do |business_priority|
  json.extract! business_priority, :id, :rule_name
  json.url business_priority_url(business_priority, format: :json)
end

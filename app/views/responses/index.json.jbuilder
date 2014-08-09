json.array!(@responses) do |response|
  json.extract! response, :id, :answer
  json.url response_url(response, format: :json)
end

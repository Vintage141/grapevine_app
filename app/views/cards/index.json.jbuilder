json.array!(@cards) do |card|
  json.extract! card, :user_id, :question, :token
  json.url card_url(card, format: :json)
end
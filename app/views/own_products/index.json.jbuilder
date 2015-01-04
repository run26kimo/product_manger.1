json.array!(@own_products) do |own_product|
  json.extract! own_product, :id, :product_id, :user_id, :count, :memo
  json.url own_product_url(own_product, format: :json)
end

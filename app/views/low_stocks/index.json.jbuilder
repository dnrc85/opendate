json.array!(@low_stocks) do |low_stock|
  json.extract! low_stock, :id
  json.url low_stock_url(low_stock, format: :json)
end

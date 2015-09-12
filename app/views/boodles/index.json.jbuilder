json.array!(@boodles) do |boodle|
  json.extract! boodle, :id
  json.url boodle_url(boodle, format: :json)
end

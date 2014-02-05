json.array!(@klusters) do |kluster|
  json.extract! kluster, :id
  json.url kluster_url(kluster, format: :json)
end

json.array!(@klusters) do |kluster|
  json.extract! kluster, :id, :name, :description
  json.url kluster_url(kluster, format: :json)
end

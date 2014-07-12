json.array!(@companies) do |company|
  json.extract! company, :id, :name, :tagline, :logo_url, :city, :state, :description, :url, :jobs_url
  json.url company_url(company, format: :json)
end

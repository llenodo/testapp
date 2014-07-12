json.array!(@perks) do |perk|
  json.extract! perk, :id, :title, :icon, :company_id
  json.url perk_url(perk, format: :json)
end

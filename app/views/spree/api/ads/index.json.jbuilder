json.array! @ads do |ad|
  json.name ad.name
  json.avatar_url ad.avatar.url(:large)
end

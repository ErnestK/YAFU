json.array!(@scrubs) do |scrub|
  json.extract! scrub, :id, :name, :file_type, :size
  json.url scrub_url(scrub, format: :json)
end

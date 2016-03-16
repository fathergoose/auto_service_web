json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :address, :phone, :description, :city, :state, :zipcode, :food, :health, :shelter, :user_id, :latitude, :longitude, :street, :shares
  json.url resource_url(resource, format: :json)
end

json.extract! house, :id, :companyid, :location, :sqf, :year, :style, :price, :floors, :basement, :owner, :contact, :potentialbuyers, :created_at, :updated_at
json.url house_url(house, format: :json)

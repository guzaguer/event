json.extract! producto, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url producto_url(producto, format: :json)

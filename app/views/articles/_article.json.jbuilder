json.extract! article, :id, :name, :price_local, :price_export, :category_id, :created_at, :updated_at
json.url article_url(article, format: :json)

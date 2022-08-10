# frozen_string_literal: true

json.extract! nature, :id, :name, :description, :category, :price, :image, :created_at, :updated_at
json.url nature_url(nature, format: :json)

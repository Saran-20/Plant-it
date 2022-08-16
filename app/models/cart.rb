class Cart < ApplicationRecord
  belongs_to :nature
  belongs_to :user
end

class LineItem < ApplicationRecord
  belongs_to :natures
  belongs_to :cart
end

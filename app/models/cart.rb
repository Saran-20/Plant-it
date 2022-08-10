# frozen_string_literal: true

class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy

    def add_natures(natures)
        current_item - line_items.find_by(natures_id: natures.id)
        if current_item
            current_item.increment(:quantity)
        else
            current_item = line_items.build(natures_id: natures.id)
       end   
       current_item
    end

end
 
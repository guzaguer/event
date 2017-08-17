class LineItem < ApplicationRecord
  belongs_to :producto
  belongs_to :cart
end

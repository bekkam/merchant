class OrderItem < ApplicationRecord
    validates :order, :product, presence: true

    belongs_to :order
    belongs_to :product


    def subtotal
        product.price * quantity
    end
end

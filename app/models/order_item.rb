class OrderItem < ApplicationRecord
    # no order item is created without order_id and product_id
    validates :order, :product, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than: 0 }

    belongs_to :order
    belongs_to :product


    def subtotal
        product.price * quantity
    end
end

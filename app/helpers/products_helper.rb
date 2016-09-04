module ProductsHelper
    def print_price(price)
        number_to_currency price
    end

    def print_stock(number)
        number > 0 ? content_tag(:span, "In Stock #{number}", class: "in_stock") : content_tag(:span, "Out of Stock", class: "out_stock")
    end
end

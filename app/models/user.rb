class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        reviews.order('star_rating DESC').first
    end

    def remove_reviews(product)
        product.reviews.destroy_all
    end
end


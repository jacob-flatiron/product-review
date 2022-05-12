class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

def leave_review(user, star_rating, comment)
    Review.create(user_id: user.id, star_rating: star_rating, comment: comment, product_id: self.id)
end

def print_all_reviews
        reviews.map do |r|
            r.print_review
        end
    end


    def Product.average_rating
        Product.average(:star_rating)
        # Product.all.order('star_rating').average
    end

end

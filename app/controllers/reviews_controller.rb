class ReviewsController < ApplicationController

    def new
        byebug
        @@id = params[:format].to_i
        @review = Review.new(item_id: @@id)

    end

    def create

        review = Review.create(review_params)
        review.item_id = @@id
        review.save
        redirect_to item_path(@@id)

    end

    private

    def review_params
        params.require(:review).permit(:user_name, :rating, :review, :item_id)
    end

end

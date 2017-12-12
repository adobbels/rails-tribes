class ReviewsController < ApplicationController
  def new
    @house = House.find(params[:house_id])
    @review = Review.new
    authorize @review
    if user_signed_in?
      if current_user.profile.present?
      else
        redirect_to new_profile_path
        flash[:alert] = 'Please create a profile before booking.'
      end
      else
        redirect_to user_session_path
        flash[:alert] = 'Please log-in before booking.'
      end
  end

  def create
    @profile = current_user.profile
    @house = House.find(params[:house_id])
    @review = Review.new(review_params)

    #@review = current_user.reviews.build(review_params)
    #authorize @review

    #respond_to do |format|
    #if @review.save
      #format.html{ redirect_to @review, notice:'Your review has been recored with successfull'}
      #format.json{ render :show, status: :created, location: @review }

    @review.house = @house
    @review.profile = @profile

    if @review.save
      redirect_to house_path(@house)
    else
        redirect_to new_profile_path
        flash[:alert] = 'Please create a profile before posting a review.'
    end
  end
end


private
  def review_params
    params.require(:review).permit(:content_review, :title_review, :rating)
  end

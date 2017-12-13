class ProfilesController < ApplicationController
  # before_action :skip_pundit, only: :new
  def index
    @profiles = Profile.all
  end

  def show
    @profile = current_user.profile
    @orders = current_user.orders
    if @orders.first and @orders.first.payment
      stripe_customer_id = JSON.parse(@orders.first.payment)["customer"]
      @customer = Stripe::Customer.retrieve(stripe_customer_id)
      @invoices = @customer.invoices



      booking = current_user.profile.bookings.last
      if booking.nil?
      else
        if booking.status = "Cancelled"
        else
          @upcoming_invoice = Stripe::Invoice.upcoming(:customer => @customer)
        end
      end
    end
    authorize @profile
  end

  def new
    skip_authorization
    @profile = Profile.new
    @profile.first_name = current_user.first_name
    @profile.last_name = current_user.last_name
    # authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    skip_authorization
    @profile.user = current_user
    if @profile.save
      flash[:notice] = 'Profile was successfully created.'
      redirect_to profile_path(@profile)
    else
      flash[:notice] = 'Your profile has not been created, please update your profile later.'
      redirect_to root_path
    end
  end

  def update
    @profile = current_user.profile
    authorize @profile
    if @profile.update(profile_params)
      flash[:notice] = 'Profile was successfully updated.'
      redirect_to profile_path(@profile)
    else
      flash[:notice] = 'Error.  Something went wrong.'
      render :edit
    end
  end

  def edit
    @profile = current_user.profile
    authorize @profile
  end

  def destroy
    @profile = Profile.find(current_user)
    @profile.destroy
  end

  private

  def profile_params
  params.require(:profile).permit(:first_name, :last_name, :address, :city, :post_code, :phone_number, :country, :birthday, :photo, :photo_cache, :biography)
  end
end

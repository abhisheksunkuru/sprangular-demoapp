class Spree::Admin::AdsController < Spree::Admin::BaseController
  include Spree::Backend::Callbacks
  def index
    @ads = Spree::Ad.all
    respond_with(@ads) do |format|
      format.html
      format.json { render :json => @ads }
    end
  end

  def edit
    @ad = Spree::Ad.find(params[:id])
  end

  def new
    @ad = Spree::Ad.new
  end

  def create
    @ad = Spree::Ad.new(ad_params)
    if @ad.save
      flash.now[:success] = Spree.t(:created_successfully)
      render :edit
    else
      render :new
    end
  end

  def show
    redirect_to edit_
  end

  def update
    @ad = Spree::Ad.find(params[:id])
    if @ad.update_attributes(ad_params)
      flash.now[:success] = Spree.t(:account_updated)
    end
    render :edit
  end

  def destroy
    @ad  = Spree::Ad.find(params[:id])
    @ad.destroy
    flash[:success] = "Ad deleted"
    respond_with do |format|
      format.html{redirect_to main_app.spree_admin_ads_url}
    end
  end
  private
  def ad_params
    params.require(:ad).permit(:id,:name,:avatar)
  end
end

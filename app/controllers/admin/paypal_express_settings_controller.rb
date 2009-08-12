class Admin::PaypalExpressSettingsController < Admin::BaseController
  def update
    Spree::Config.set(params[:preferences])
    
    respond_to do |format|
      format.html {
        redirect_to admin_paypal_express_settings_path
      }
    end
  end

end

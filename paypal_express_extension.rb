# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PaypalExpressExtension < Spree::Extension
  version "1.0"
  description "Bootstrap extension to support paypal express along side another payment gateway in spree"
  url "http://github.com/bryanmtl/paypal_express"

  # Please use paypal_express/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    OrdersController.class_eval do
      # include this to enable paypal express checkout functions
      include Dynamo::PaypalExpress
    end
  end
end
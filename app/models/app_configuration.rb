class AppConfiguration < Configuration

  # signup for a developer account at https://developer.paypal.com or checkout Ryan Bate's screencast about getting an account
 
  preference :paypal_express_login, :string, :default => 'your_login'
  preference :paypal_express_password, :string, :default => 'your_password'
  preference :paypal_express_signature, :string, :default => 'your_signature'

end

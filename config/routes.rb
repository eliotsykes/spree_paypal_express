map.resources :orders, :member => { :shipping_method => :any, :payment => :any, :confirmation => :any,
                                    :express_checkout => :any, :confirm => :any, :complete => :any }
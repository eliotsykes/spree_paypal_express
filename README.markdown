= Paypal Express

A simple way to include paypal express as a payment option along with a default payment gateway in Spree.

To add the other checkout option, update your order/edit view with something like this: 

	<p>Check out with VISA or MASTERCARD:</p>
	<% unless @order.line_items.empty? -%>
		<div class="links_checkout"><%= link_to t("checkout"), edit_order_checkout_url(@order), :class => 'button checkout primary' %></div>
			<% end %>
	<%=link_to t("continue_shopping"), products_path, :class => 'button continue' %>
  
</div>
<div class="links">
<% unless @order.line_items.empty? -%>
	<p>For all other forms of payment:</p>
	<%= link_to image_tag('https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif'), express_checkout_order_url(@order) %>
<% end %>
</div>
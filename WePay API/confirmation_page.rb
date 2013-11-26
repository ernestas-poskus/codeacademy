# WePay provides a generic confirmation page. After the user enters their payment information, 
# you'll can send the user to your confirmation page. 
# This is the page where the user can print out a confirmation number or their receipt.

# download the Ruby SDK at https://github.com/wepay/ruby-sdk
require 'wepay'

# credentials
client_id = ''
client_secret = ''
access_token = 'STAGE_df1684a1c7b91f0de51b72e5890891b92d34e47fb3cb48d4dbd8d2a89fa253cc'

wepay = WePay.new(client_id, client_secret)
response = wepay.call('/checkout/create', access_token, {
	:account_id => 161624111,
	:short_description => 'A brand new soccer ball',
	:type => 'GOODS',
	:amount => '24.95',
	:redirect_uri => 'http://yourwebsite.com'
})

puts response

redirect user to response['checkout_uri']
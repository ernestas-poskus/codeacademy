# Using the WePay Ruby SDK

# In the previous examples, we are constructing HTTP calls using Ruby libraries per call. 
# But if you were making multiple API calls in your application, you'll need a simpler and cleaner way to organize your code. 
# The SDK abstracts and simplifies the code for you -- making it easy to develop without worrying how urllib and urllib2 works.

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
	:amount => '24.95'
})

puts response
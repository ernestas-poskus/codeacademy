# Creating a preapproval object
# In order to use subscriptions, you'll have to create a preapproval object. You can use the preapproval API to create one.

# download the Ruby SDK at https://github.com/wepay/ruby-sdk
require 'wepay'

# credentials
client_id = ''
client_secret = ''
access_token = 'STAGE_df1684a1c7b91f0de51b72e5890891b92d34e47fb3cb48d4dbd8d2a89fa253cc'

wepay = WePay.new(client_id, client_secret)
response = wepay.call('/preapproval/create', access_token, {
	:account_id => 161624111,
	:period => 'monthly',
	:end_time => '2013-12-25',
	:amount => '19.99',
	:short_description => 'A subscription to our magazine.',
	:auto_recur => true
})

puts response

#redirect user to response['checkout_uri']	
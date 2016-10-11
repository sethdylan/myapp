if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_0vkJtQ5K87m5NyeAus6p3UGB',
    :secret_key => 'sk_test_mvouzY65LmAJ9IoeF2QATXzV'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
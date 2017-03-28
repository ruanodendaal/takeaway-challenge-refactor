require 'twilio-ruby'
require 'envyable'
Envyable.load('./config/env.yml')

class SMS

  def send_sms
    client = Twilio::REST::Client.new(
    ENV["TWILIO_ACCOUNT_SID"],
    ENV["TWILIO_AUTH_TOKEN"]
    )

    # 1hr after order
    delivery_time = (Time.now + 60*60).strftime('%H:%M')
    message = "Thank you! Your order was placed and will be delivered before #{delivery_time}"

    client.account.messages.create(
      :to => ENV["NUMBER"],
      :from => "+44 1244 470434",
      :body => message
    )
  end


end

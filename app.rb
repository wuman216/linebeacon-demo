# app.rb
require 'sinatra'
require 'line/bot'

def client
  @client ||= Line::Bot::Client.new { |config|
    config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
    config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
  }
end

post '/callback' do
  body = request.body.read

  signature = request.env['HTTP_X_LINE_SIGNATURE']
  unless client.validate_signature(body, signature)
    error 400 do 'Bad Request' end
  end

  events = client.parse_events_from(body)
  events.each { |event|
    puts event 
    case event
    when Line::Bot::Event::Beacon
         message = {
          type: 'text',
          text: 'Welcome to the event!' + "\n" + 'Check-in successfully at: ' + Time.new.strftime("%Y-%m-%d %H:%M:%S")
        }
        client.reply_message(event['replyToken'], message)
    else
      message = {
          type: 'text',
          text: 'i am still learning to deal with this message lol'
        }
        client.reply_message(event['replyToken'], message)
    end
  }

  "OK"
end

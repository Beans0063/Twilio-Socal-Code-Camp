require 'rubygems'
require 'sinatra'

get '/say' do
  content_type :xml
  '<?xml version="1.0" encoding="UTF-8"?>
  <Response>
  <Say>Hello SoCal Code Camp</Say>
  </Response>'
end

get '/play' do
  content_type :xml
  '<?xml version="1.0" encoding="UTF-8"?>
  <Response>
  <Say>Hello SoCal Code Camp</Say>
  <Play>http://dl.dropbox.com/u/11489766/epic_sax.mp3</Play>
  </Response>'
end

get '/gather' do
  content_type :xml
  '<?xml version="1.0" encoding="UTF-8"?>
  <Response>
  <Say voice="woman">Hello SoCal Code Camp</Say>
  <Gather action="/gather_reply" method="GET" numDigits="1">
    <Say voice="woman">How many years have you been living in San Diegp?</Say>
  </Gather>
  </Response>'
end

get '/gather_reply' do
  content_type :xml
  '<?xml version="1.0" encoding="UTF-8"?>
  <Response>
  <Say voice="woman">I hear youve been in San Diego for ' + params[:Digits] + ' years.  Thats fantastic!.</Say>
  </Response>'
end

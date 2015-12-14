require 'mechanize'
require 'pry'

mechanize = Mechanize.new

# initialize
page = mechanize.get('https://www.southwest.com/')
search_form = page.forms[2]

# form fields
return_aiport = search_form.fields[0]
depart_airport = search_form.fields[1]
arrive_airport = search_form.fields[2]
depart_date = search_form.fields[3]
return_date = search_form.fields[4]
adult_passengers = search_form.fields[5]
senior_passengers = search_form.fields[6]


# flight deets for part 1
# return_aiport.value = 'SLC'
# depart_airport.value = 'SLC'
# arrive_airport.value = 'MCO'
# depart_date.value = '10/23/2015'
# return_date.value = '10/30/2015'
# adult_passengers.value = '1'
# senior_passengers.value = '0'

# flight deets for part 2
return_aiport.value = 'SLC'
depart_airport.value = 'SLC'
arrive_airport.value = 'DEN'
depart_date.value = '11/23/2015'
return_date.value = '11/30/2015'
adult_passengers.value = '1'
senior_passengers.value = '0'
flights_page = search_form.submit
flights = search('.swa_text_flightNumber').text.strip
flights.each do |flight|
	binding.pry
	flight_price = label.search('.product_price').text.strip
end








binding.pry
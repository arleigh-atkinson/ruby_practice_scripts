require 'mechanize'
require 'pry'

mechanize = Mechanize.new

# Link Count
page = mechanize.get('http://wikipedia.org/')
puts "Number of Links: #{page.links.count}"

# Search Wikipedia
search_form = page.forms.first
search_form['search'] = 'rabbit'
search_form.submit


# Log in to MarryMe
page2 = mechanize.get('http://localhost:3000/couples/sign_in')
search_form2 = page2.forms.last
email_field = search_form2.fields[2]
email_field.value = 'couple@gmail.com'
password_field = search_form2.fields[3]
password_field.value = 'password'
search_form2.submit

# Search Amazon
page3 = mechanize.get('http://amazon.com/')
search_form3 = page3.forms

binding.pry 
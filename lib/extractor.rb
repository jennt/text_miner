class Extractor

  def phone_numbers(text)
    only_phone_numbers_with_symbols = /\(\d{3}\) \d{3}\-\d{4}/
    phone_numbers = text.scan(only_phone_numbers_with_symbols)
  end

# locations.map do |location|
#   city_state = /([\w\s-]+), ([A-Z]{2})/.match(location)

# expect(@x.emails(text)).to eq ['amaranth@gmail.com',
#                                'pea@sprouts.org',
#                                'cucumber.earthnut@pea.net']
  def emails(text)
    emails = /\w+\.\w+\@\w+\.\w*|\w+\@\w+\.\w*/
    text.scan(emails)
  end
end

class Separator
  def words(string)
    if string.scan(/^\d.$/) == [string]
      # (/^\d.$/).match(string)
      return nil
    else
      string.scan(/\S+/)
    end
  end

  def phone_number(number)
    match = /\(?(\d{3})\)?[ -\.]?(\d{3})[ -\.]?(\d{4})/.match(number)

    if match.nil?
      return nil
    end

    {'area_code': match[1], 'number': "#{match[2]}-#{match[3]}"}
  end

  def money(amount)
    separated_amount = /(\$)(\d*[,]?[.]?\d+)/.match(amount)

    {'currency': separated_amount[1] , 'amount': separated_amount[2].to_f }
  end
  #(\$)(\d*) gets $4, $19, and $19.00
  #<%= number_with_precision(@number, :precision => 2, :delimiter => ',') %>
# $4
# $19
# $19.00
# $3.58
# $1000
# $1000.00
# $1,000
# $1,000.00
# $5,555,555
# $5,555,555.55
# $45,555,555.55
# $456,555,555.55
# $1234567.89
#
# $12,34
# $1234.9
# $1234.999
# $
# 31
# $$31
  def zipcode(code)
    if zip[1] (^\d{4}$) nil #get the 4 digit nil example
      if zip[1] (^\d{6}$) nil #gets the 6 digit nil example
    #first 5 digits (\d{5}) else nil

  end
  # (\d{5})-?(\d{4})? gets the first 5 correct but still grabs
  # 2nd and 3rd wrong ones
# {'zip': '63936', 'plus4': nil}

end

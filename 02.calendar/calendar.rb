require 'date'

this_year = Date.today.year
this_month = Date.today.month
this_month_last_date = Date.new(this_year, this_month, -1)
this_month_1th_date = Date.new(this_year, this_month, 1)

puts "#{this_month_last_date.year}/#{this_month_last_date.month}"
puts "Sun Mon Tue Wed Thu Fri Sat"

if this_month_1th_date.wday != 0
  for j in 1..this_month_1th_date.wday
    print "    "
  end
end

for i in 1..this_month_last_date.day
  date = Date.new(this_year, this_month, i)

  unless date.saturday?
    if date.day < 10
      # モジュール化する
      print "  #{i} "
    else
      print " #{i} "
    end
  else
    # モジュール化する
    if date.day < 10
      puts "  #{i} "
    else
      puts " #{i} "
    end
  end
end

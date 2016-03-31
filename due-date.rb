require 'date'
require 'active_support/all'

class DueDate
  def self.calculate_due_date(date = Time.now.strftime('%A'), time = Time.now.strftime('%H:%M'))

    hour = time.to_i

		answer = puts "The problem will be handled on #{ready}!"

    if date.include?("Thursday" || "Friday") && ( hour >= 9 && hour <= 17 )

      four_days_as_f = 4 * 24 * 60 * 60

  		ttime_as_f_4 = Time.now.to_f + four_days_as_f

  		ready = Time.at(ttime_as_f_4).to_datetime.strftime('%A, %l:%M %p')

			answer

    elsif date.exclude?("S") && ( hour >= 9 && hour <= 17 )

      two_days_as_f = 2 * 24 * 60 * 60

      ttime_as_f = Time.now.to_f + two_days_as_f

			ready = Time.at(ttime_as_f).to_datetime.strftime('%A, %l:%M %p')

      answer

    else
      puts "Let me remind you that you can only submit problems on weekdays from 9:00 AM to 5:00 PM!"
    end
  end
end

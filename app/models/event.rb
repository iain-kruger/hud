class Event < ActiveRecord::Base

def weeks_to_event
    self.date.strftime("%U").to_i - Date.today.strftime("%U").to_i
end

def days_to_event
	(self.date -  Date.today).to_i
end

def no_of_days
	(self.end_date - self.date).to_i + 1
end

def week_number
	 self.date.strftime("%U").to_i 
end

def odd_even
	if week_number.odd? then
		"odd"
	else
		"even"
	end
end
	
def weeks_left
	if days_to_event.to_i <=7 then
		0 
		
	elsif days_to_event
		weeks_to_event - 1
		
	end
end

def days_left
	daysLeft = days_to_event - (weeks_left * 7)
	days = 0
	if daysLeft == 7 then 
		days.to_i
	else
		daysLeft.to_i
	end
end

def weeks_left_final
	if days_left == 0 then
		weeks_to_event
	else
		weeks_to_event - 1
	end
end

end
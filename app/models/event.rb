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

end
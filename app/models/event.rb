class Event < ActiveRecord::Base

def weeks_to_event
    self.date.strftime("%U").to_i - Date.today.strftime("%U").to_i
end

def week_number
	(self.date -  Date.today).to_i
end

end

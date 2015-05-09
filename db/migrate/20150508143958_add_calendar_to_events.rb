class AddCalendarToEvents < ActiveRecord::Migration
  def change
    add_column :events, :calendar, :string
  end
end

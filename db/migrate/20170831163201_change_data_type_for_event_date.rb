class ChangeDataTypeForEventDate < ActiveRecord::Migration[5.1]
  def self.up
    change_table :events do |t|
      t.change :event_date, :datetime
    end
  end
  def self.down
    change_table :events do |t|
      t.change :event_date, :date
    end
  end
end

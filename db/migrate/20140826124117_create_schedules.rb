class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :free_date
      t.references :helper, index: true

      t.timestamps
    end
  end
end

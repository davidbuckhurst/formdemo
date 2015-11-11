class CreateBusinessPrioritiesDevicesJoinTable < ActiveRecord::Migration
  def change
    create_table :business_priorities_devices do |t|
      t.belongs_to :business_priority, index: true
      t.belongs_to :device, index: true
    end
  end
end

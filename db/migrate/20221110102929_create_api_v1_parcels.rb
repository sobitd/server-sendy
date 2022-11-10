class CreateApiV1Parcels < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_parcels do |t|
      t.string :recipient_name
      t.string :recipient_contact
      t.integer :weight
      t.string :from
      t.string :destination
      t.string :distance
      t.integer :total_cost
      t.string :order_status

      t.timestamps
    end
  end
end

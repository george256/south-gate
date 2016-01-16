class CreateIssue < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :description
      t.string :location_description
      t.string :photo
      t.boolean :approved, default: false
      t.integer :status, default: 'APPROVAL_PENDING'
      t.decimal :latitude
      t.decimal :longitude
      t.timestamps
    end
  end
end

class CreateIssue < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :description
      t.string :location_description
      t.string :avatar
      t.boolean :approved, default: false
      t.integer :status
      t.timestamps
    end
  end
end

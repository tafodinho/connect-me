class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :user 
      t.string :avatar
      t.date :dob
      t.timestamps
    end
  end
end

class CreateMentors < ActiveRecord::Migration[8.1]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :email
      t.text :skills
      t.integer :age
      t.integer :phone

      t.timestamps
    end
  end
end

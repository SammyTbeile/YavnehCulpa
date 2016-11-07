class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :professor
      t.string :recommended
      t.string :adder
      t.text :notes
      t.references :department

      t.timestamps
    end
  end
end

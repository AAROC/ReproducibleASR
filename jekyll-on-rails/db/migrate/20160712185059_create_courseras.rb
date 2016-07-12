class CreateCourseras < ActiveRecord::Migration
  def change
    create_table :courseras do |t|

      t.timestamps
    end
  end
end

class CreateMusicians < ActiveRecord::Migration
  def up
    create_table :musicians do |t|
      t.string :first
      t.string :last
      t.string :instrument
    end
  end

  def down
    drop_table :musicians
  end

end

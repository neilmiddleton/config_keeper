class CreateKeys < ActiveRecord::Migration
  def up
    create_table :keys do |t|
      t.string :name
      t.string :value
    end
  end

  def down
    drop_table :keys
  end
end

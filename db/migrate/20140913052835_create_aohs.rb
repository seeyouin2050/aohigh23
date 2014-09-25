class CreateAohs < ActiveRecord::Migration
  def change
    create_table :aohs do |t|
      t.text :status

      t.timestamps
    end
  end
end

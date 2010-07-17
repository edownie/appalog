class CreateArchalogs < ActiveRecord::Migration
  def self.up
    create_table :archalogs do |t|
      t.text :title

      t.timestamps
    end
  end

  def self.down
    drop_table :archalogs
  end
end

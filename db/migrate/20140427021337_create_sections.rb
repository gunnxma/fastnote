class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :content
      t.datetime :addtime

      t.timestamps
    end
  end
end

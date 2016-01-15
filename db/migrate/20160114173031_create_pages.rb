class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :page_name
      t.text :link
      t.timestamps null: false
    end
  end
end

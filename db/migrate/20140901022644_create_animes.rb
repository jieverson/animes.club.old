class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.text :name
      t.text :picture
      t.text :synopsis

      t.timestamps
    end
  end
end

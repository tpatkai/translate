class AddTranslatedToPost < ActiveRecord::Migration
  def change
    add_column :posts, :translated, :text
  end
end

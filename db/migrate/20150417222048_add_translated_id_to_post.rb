class AddTranslatedIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :translated_id, :text
  end
end

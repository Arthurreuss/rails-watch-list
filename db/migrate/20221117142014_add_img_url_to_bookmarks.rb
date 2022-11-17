class AddImgUrlToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :img_url, :string
  end
end

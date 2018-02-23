class AddBannerFieldToPost < ActiveRecord::Migration[5.0]
  def up
   add_attachment :posts, :banner
 end

 def down
   remove_attachment :posts, :banner
 end
end

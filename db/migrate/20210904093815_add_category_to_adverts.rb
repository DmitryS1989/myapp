class AddCategoryToAdverts < ActiveRecord::Migration[6.1]
  def change
    add_column :adverts, :category, :integer
  end
end

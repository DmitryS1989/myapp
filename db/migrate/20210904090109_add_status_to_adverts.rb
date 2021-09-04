class AddStatusToAdverts < ActiveRecord::Migration[6.1]
  def change
    add_column :adverts, :status, :integer
  end
end

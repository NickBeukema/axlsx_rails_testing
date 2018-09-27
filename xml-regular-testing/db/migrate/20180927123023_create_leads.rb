class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :occupation

      t.timestamps
    end
  end
end

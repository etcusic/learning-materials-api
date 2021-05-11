class ChangeCardColumnsToEnglishAndSpanish < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :side_a, :english
    rename_column :cards, :side_b, :spanish
  end
end

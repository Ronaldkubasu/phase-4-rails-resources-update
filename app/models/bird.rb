class Bird < ApplicationRecord
    def bird_params
        params.permit(:name, :species, :likes)
      end
end

class AddLikesToBird < ActiveRecord::Migration[6.1]
    def change
      add_column :birds, :likes, :integer, null: false, default: 0
    end
  end
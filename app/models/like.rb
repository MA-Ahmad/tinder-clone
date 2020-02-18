class Like < ApplicationRecord
  belongs_to :account

  validates_uniqueness_of :liked_account_id, sope: :account_id
end

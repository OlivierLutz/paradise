class Revenu < ApplicationRecord
    validates :revenuindep, presence: { message: '==> vide' }
    validates :salaire, presence: { message: '==> vide' }
end

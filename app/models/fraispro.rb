class Fraispro < ApplicationRecord

    validates :montant, presence: { message: '==> Le montant est un champ obligatoire' }
    validates :date, presence: { message: '==> La date de facture est un champ obligatoire' }

end

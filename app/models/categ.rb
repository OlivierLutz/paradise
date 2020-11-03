class Categ < ApplicationRecord
    validates :nature, presence: { message: '==> La catégorie est un champ obligatoire' }
    validates :souscat, presence: { message: '==> La catégorie mère est un champ obligatoire' }
end

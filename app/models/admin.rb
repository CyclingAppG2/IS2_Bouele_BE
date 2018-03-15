class Admin < ApplicationRecord
    validates :hoursperweek,  presence: true, default: 0, numericality: { only_integer: true, greater_than: 0 }

end

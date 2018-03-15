class ForumPost < ApplicationRecord
    validatates :text, presence: true, length: {minimum: 20}
end

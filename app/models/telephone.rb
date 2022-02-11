class Telephone < ApplicationRecord
  enum kind: {
    house: 0,
    work: 1,
    other: 2
  }
end

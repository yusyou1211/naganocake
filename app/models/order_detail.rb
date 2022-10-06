class OrderDetail < ApplicationRecord

  belongs_to :order
  belongs_to :item
  enum making_status: {
    impossible_manufacture: 0,
    wating_manufacture: 1,
    manufacturing: 2,
    finish_manufacture: 3
  }
end

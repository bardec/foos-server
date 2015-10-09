class Game < ActiveRecord::Base
  module Status
    Open = :open
    Closed = :closed
  end
end

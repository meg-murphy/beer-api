class Beer < ApplicationRecord

  def name_and_style
    return "#{name}, an #{style}"
  end
end

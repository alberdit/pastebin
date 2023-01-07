class Paste < ApplicationRecord
  def truncate 
    if paste.size > 15 
      paste[0..15]+"..."
    else 
      paste
    end
  end 
end

require "rails_helper"

describe Paste, type: :model do 
  describe "#truncate" do
    it "truncates the paste with a long text cause Leio says so." do
      paste = create(:paste) 
      expect(paste.truncate).to eq("Soy un paste est...")
    end 

    context "when the text is short" do
      it "returns the paste" do
        paste = create(:paste,paste:"Hola")
        expect(paste.truncate).to eq("Hola")
      end
    end
  end 
end
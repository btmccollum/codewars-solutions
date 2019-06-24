require_relative '../Ruby/duplicate_encoder.rb'
# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby

describe "duplicate_encoder" do 

    describe "converts strings to a series of '(' and ')' based on value occurences while ignoring casing"
        context "when passed the string 'din'" do
            it "returns '((('" do
                expect(duplicate_encode('din')).to eql('(((')
            end

        context "when passed the string 'recede'" do
            it "returns '()()()'" do
                expect(duplicate_encode('recede')).to eql('()()()')
            end
        end

        context "when passed the string 'Success'" do
            it "returns ')())())'" do
                expect(duplicate_encode('Success')).to eql(')())())')
            end
        end

        context "when passed the string '(( @'" do
            it "returns '))(('" do
                expect(duplicate_encode('(( @')).to eql('))((')
            end
        end
    end
end
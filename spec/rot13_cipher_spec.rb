require_relative '../Ruby/rot13_cipher'

describe "rot13 cipher takes in an array of strings and returns an array of decoded strings" do
  it "returns ['delta', 'meet at chocolate corner', 'ten men', 'two backup teams', 'midnight extraction'] when passed
    ['qrygn', 'zrrg ng pubpbyngr pbeare', 'gra zra', 'gjb onpxhc grnzf', 'zvqavtug rkgenpgvba']" do 
    secret_messages = ["qrygn", "zrrg ng pubpbyngr pbeare", "gra zra", "gjb onpxhc grnzf", "zvqavtug rkgenpgvba"]
    expect(rot13(secret_messages)).to eq(["delta", "meet at chocolate corner", "ten men", "two backup teams", "midnight extraction"])
  end
end
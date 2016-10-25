require_relative "../../set1/base64.rb"
require 'pry'

describe "Hex to base64 conversion" do
  it "produces correct results" do
    actual = CryptoPals.encode("49276d206b696c6c696e6720796f757220627261696e20"\
                              "6c696b65206120706f69736f6e6f7573206d757368726f6f6d")
    expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"
    expect(actual).to eq(expected)
  end

  it 'does an XOR on two values' do
    left     = CryptoPals.hex_decode "1c0111001f010100061a024b53535009181c"
    right    = CryptoPals.hex_decode "686974207468652062756c6c277320657965"
    expected = "746865206b696420646f6e277420706c6179"
    actual   = CryptoPals.hex_encode(CryptoPals.xor(left, right))
    expect(actual).to eq(expected)
  end
end
require "base64"
module CryptoPals
  def self.xor(left, right)
    raise "OPPS!" unless left.length == right.length    
    x = left
      .bytes
      .zip(right.bytes)
      .map { |byte1, byte2| byte1 ^ byte2 }
      .pack("C*")
  end

  def self.decode(x)
    Base64.decode64(x)
  end

  def self.encode(text)
    Base64.encode64(hex_decode(text)).gsub("\n", "")
  end

  def self.hex_encode(text)
    text.bytes.map{ |x| x.to_s(16) }.join("")
  end

  def self.hex_decode(text)
    Array(text).pack('H*')
  end
end
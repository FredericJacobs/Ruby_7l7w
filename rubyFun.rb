class Roman
	def self.method_missing name, *args
		roman = name.to_s
		roman.gsub!("IV", "IIII")
		roman.gsub!("IX", "VIIII")
		roman.gsub!("XL", "XXXX")
		roman.gsub!("XC", "LXXXX")

		(roman.count("I")+
			5*roman.count("V")+
			10*roman.count("X")+
			50*roman.count("L")+
			100*roman.count("C"))
	end
end

puts Roman.CLXVIII
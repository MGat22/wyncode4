noir = Hash.new
noir["hair"] = "black"
noir["eyes"] = "green"
noir["species"] = "cat"
noir["attitude"] = "bad"
p noir
bowser = Hash.new
bowser["hair"] = "brown"
bowser["eyes"] = "black"
bowser["species"] = "hamster"
bowser["toy"] = "wheel"
p bowser
p noir.merge(bowser)

noir = { hair: 'black', eyes: "green", species: "cat", attitude: "bad"}
p noir
bowser = { hair: "brown", eyes: "black", species: "hamster", toy: "wheel"}
p bowser
p bowser.merge (noir)

noir = Hash.new
{
	"hair" => "black",
	"eyes" => "green",
	"species" => "cat",
	"attitude" => "bad"
}
p noir
bowser = Hash.new
{
	"hair" => "brown",
	"eyes" => "black",
	"species" => "hamster",
	"toy" => "wheel"
}
p bowser
p noir.merge( bowser)
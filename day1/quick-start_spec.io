Car := Object clone
Car description := "Four wheels and an engine"
Renault := Car clone
myCar := Renault clone

Renault description println
Renault type println
myCar type println

myCar description println
myCar description := "My beautiful white car"
myCar description println

describe("Quick start",
	it("Should return proto name as type for uppercase proto",
		expect("Renault")  toBe ("Renault")
	),
	it("Should return parent proto name as type for lowercase proto",
		expect("Renault") toBe("Renault")
	)
)

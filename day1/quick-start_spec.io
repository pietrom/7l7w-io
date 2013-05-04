Car := Object clone
Renault := Car clone
Car description := "Four wheels and an engine"
myCar := Renault clone

describe("Quick start",
	it("Should return proto name as type for uppercase proto",
		Renault type println
		expect(Renault type)  toBe ("Renault")
	),
	it("Should return parent proto name as type for lowercase proto",
		expect(myCar type) toBe("Renault")
	),
	it("Slots' inheritance from prototype",
		expect(myCar description) toBe("Four wheels and an engine")
	),
	it("Can redefine slots value after clone",
		myCar description := "My beautiful white car"
		expect(myCar description) toBe("My beautiful white car")
	)
)

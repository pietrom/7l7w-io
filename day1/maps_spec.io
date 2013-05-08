aMap := Map clone

describe("Map spikes",
	beforeEach(
		aMap atPut("Merckx", 11)
		aMap atPut("Hinault", 10)
		aMap atPut("Indurain", 7)
	),

	afterEach(
		aMap empty
	)

	it("size message returns the size of the Map",
		expect(aMap size) toBe (3)
	),
	  
	it("at message returns keyed value",
		expect(aMap at("Indurain"))  toBe (7)
	),

	it("at message with default value returns default value when key is not present",
		expect(aMap at("me", -1)) toBe(-1)
	),

	it("at message returns nil when key is not present",
		expect(aMap at("me")) toBe(nil)
	),
	
	it("foreach message iterates over the Map",
		buffer := String clone
		aMap foreach(k, v, buffer := buffer .. k .. ":" .. v .. ";")
		expect(buffer) toBe("Merckx:11;Hinault:10;Indurain:7;")
	)
)


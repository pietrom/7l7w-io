aList := List clone

describe("List spikes",
	beforeEach(
		aList append("Merckx")
		aList append("Hinault")
		aList append("Contador")
	),

	afterEach(
		aList removeAll
	)

	it("size message returns the size of the List",
		"Test size" println
		aList size println
		expect(aList size) toBe (3)
	),
	  
	it("List's size increment after append",
		aList append ("Me")
		expect(aList size)  toBe (4)
	),

	it("List contains appended element after append",
		aList append ("Me")
		expect(aList contains("Me"))  toBe (true)
	),

	it("first message returns the first element of the List",
		expect(aList first) toBe("Merckx")
	),

	it("last message returns the last element of the List",
		expect(aList last) toBe("Contador")
	),

	it("pop message returns the last element of the List and removes it from the List",
		expect(aList pop) toBe("Contador")
		expect(aList size) toBe (2)
	),

	it("atPut substitutes indexed element",
		aList atPut (2, "Indurain")
		expect(aList size) toBe (3)
		expect(aList at(2)) toBe ("Indurain")
	),
	
	it("foreach iterates over the list",
		buffer := String clone
		aList foreach(i, e, buffer := buffer .. i .. ":" .. e .. ";")
		expect(buffer) toBe ("0:Merckx;1:Hinault;2:Contador;")
	),
	
	it("foreach iterates over the list without index",
		buffer := String clone
		aList foreach(e, buffer := buffer .. e .. ";")
		expect(buffer) toBe ("Merckx;Hinault;Contador;")
	),
	
	it("map maps list's elements",
		mapped := aList map(e, e at(0) asCharacter)
		expect(mapped) toBe (list("M", "H", "C"))
	)
)


Highlander := Object clone

describe("Singleton's spikes",
	beforeEach(
		Highlander clone := Highlander
	),
	it("Clone of normal object is not the same object",
		x := Object clone
		y := x clone
		expect(x == y) toBe (false)
	),

	it("Clone of singleton object is the same object",
		x := Highlander clone
		y := Highlander clone
		expect(x == y) toBe (true)
	),

	it("Clone of clone of singleton object is the same object",
		x := Highlander clone
		y := x clone
		expect(x == y) toBe (true)
	)
)

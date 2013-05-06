Highlander := Object clone
Highlander clone := Highlander

describe("Singleton's spikes",
	it("Clone of normal object is not the same object",
		x := Object clone
		y := x clone
		expect(x == y) toBe (false)
	)
)

o := Object clone

describe("Assignment spikes",
	beforeEach(
		o := Object clone
	),

	it(":= Creates slot ad assigns its value",
		o theSlot := "The value"
		expect(o theSlot) toBe ("The value")
	)
)

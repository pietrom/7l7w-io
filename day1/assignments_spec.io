o := Object clone

describe("Assignment spikes",
	beforeEach(
		o := Object clone
	),

	it(":= Creates slot ad assigns its value",
		o theSlot := "The value"
		expect(o theSlot) toBe ("The value")
	),

	it("= Assigns value to an existing slot",
		o theSlot := "Initial value"
		o theSlot = "Final value"
		expect(o theSlot) toBe ("Final value")
	)
)


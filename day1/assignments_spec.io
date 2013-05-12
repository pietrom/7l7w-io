o := Object clone

describe("Assignment spikes",
	beforeEach(
		o := Object clone
	),

	afterEach(
		o theSlot := nil
	),

	it(":= Creates slot ad assigns its value",
		o theSlot := "The value"
		expect(o theSlot) toBe ("The value")
	),

	it("= Assigns value to an existing slot",
		o theSlot := "Initial value"
		o theSlot = "Final value"
		expect(o theSlot) toBe ("Final value")
	),

	it("= Raises exception when the slot is not existing",
		ex := try (o aSlot = "Final value")
		expect(ex != nil) toBe (true)
	)
)


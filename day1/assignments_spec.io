o := Object clone

describe("Assignment spikes",
	beforeEach(
		o := Object clone
	),

	afterEach(
		o theSlot := nil
	),

	it(":= Creates slot and assigns its value",
		o theSlot := "The value"
		expect(o theSlot) toBe ("The value")
	),

	it(":= Creates slot without setter",
		o theSlot := "The value"
		ex := try(o setTheSlot("Other value"))
		expect(ex != nil) toBe (true)
	),

	it("= Assigns value to an existing slot",
		o theSlot := "Initial value"
		o theSlot = "Final value"
		expect(o theSlot) toBe ("Final value")
	),

	it("= Raises exception when the slot is not existing",
		ex := try (o aSlot = "Final value")
		expect(ex != nil) toBe (true)
	),

	it("::= Creates slot and setter method and and assigns its value",
		o theSlot ::= "The value"
		expect(o theSlot) toBe ("The value")
		o setTheSlot("Other value")
		expect(o theSlot) toBe ("Other value")
	)
)


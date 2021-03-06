describe("Conditional spikes",
	it("if with true condition",
		self a := "FIRST"
		if(3 > 2) then(self a := "SECOND")
		expect(self a) toBe("SECOND")
	),

	it("if with false condition",
		self a := "FIRST"
		if(3 < 2) then(self a := "SECOND")
		expect(self a) toBe("FIRST")
	),

	it("ifTrue",
		self a := "FIRST"
		(3 > 2) ifTrue (self a := "SECOND")
		expect(self a) toBe("SECOND")
	),

	it("ifTrue ifFalse",
		self a := "FIRST"
		(3 < 2) ifTrue (self a := "SECOND") ifFalse(self a := "THIRD")
		expect(self a) toBe("THIRD")
	),

	it("if then else with true condition",
		self a := "FIRST"
		if (3 > 2) then (self a := "SECOND") else (self a := "THIRD")
		expect(self a) toBe("SECOND")
	),

	it("if then else with false condition",
		self a := "FIRST"
		if (3 < 2) then (self a := "SECOND") else (self a := "THIRD")
		expect(self a) toBe("THIRD")
	)
)

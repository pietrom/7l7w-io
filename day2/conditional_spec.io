describe("Conditional spikes",
	it("if with true condition",
		self a := "FIRST"
		if(3 > 2) then(self a := "SECOND")
		a println
		expect(self a) toBe("SECOND")
	),

	it("if with false condition",
		self a := "FIRST"
		if(3 < 2) then(self a := "SECOND")
		a println
		expect(self a) toBe("FIRST")
	),

	it("ifTrue",
		self a := "FIRST"
		(3 > 2) ifTrue (self a := "SECOND")
		a println
		expect(self a) toBe("SECOND")
	),

	it("ifTrue ifFalse",
		self a := "FIRST"
		(3 < 2) ifTrue (self a := "SECOND") ifFalse(self a := "THIRD")
		a println
		expect(self a) toBe("THIRD")
	),

	it("if then else withi true condition",
		self a := "FIRST"
		if (3 > 2) then (self a := "SECOND") else (self a := "THIRD")
		a println
		expect(self a) toBe("SECOND")
	)
)

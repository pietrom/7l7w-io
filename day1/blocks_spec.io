describe("Blocks spikes",
	it("Evaluate a block",
		m := method(x,
			x + x
		)

		result := m(10)
		expect(result) toBe(20)
	)
)


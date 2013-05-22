describe("Blocks spikes",
	it("Evaluate a block",
		m := method(x,
			x + x
		)

		result := m(10)
		expect(result) toBe(20)
	),

        it("Evaluate a block that refers to other slots",
                m := method(x,
                        x + y
                )
                y := 5
                result := m(10)
                expect(result) toBe(15)
        )

)


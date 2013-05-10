foobar := Object clone

foobar foo := method (
	"FOO"
)

describe("Methods spikes",
	it("foo message returns FOO",
		expect(foobar foo) toBe ("FOO")
	)
)


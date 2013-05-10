foobar := Object clone

foobar foo := method (
	"FOO"
)

foobar bar := method (
	"BAR"
)

foobar sayHello := method ( target,
	"Hello, " .. target .. "!"
)

describe("Methods spikes",
	it("foo message returns FOO",
		expect(foobar foo) toBe ("FOO")
	),
	
	it("foo message returns BAR",
		expect(foobar bar) toBe ("BAR")
	),
	
	it("sayHello message with target parameter",
		expect(foobar sayHello("Pietro")) toBe ("Hello, Pietro!")
	)
)


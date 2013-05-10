foobar := Object clone

foobar foo := method (
	"FOO"
)

foobar bar := method (
	"BAR"
)

Hello := Object clone

Hello init := method ( msg,
	if(msg == nil, msg := "Hello")
	self baseMessage := msg
	self
)

Hello sayHello := method ( target,
	if(target == nil, target := "World")
	self baseMessage .. ", " .. target .. "!"	
)

describe("Methods spikes",
	it("foo message returns FOO",
		expect(foobar foo) toBe ("FOO")
	),
	
	it("foo message returns BAR",
		expect(foobar bar) toBe ("BAR")
	),
	
	it("sayHello message with target parameter",
		hello := Hello clone("Hello")
		expect(hello sayHello("Pietro")) toBe ("Hello, Pietro!")
	),
	
	it("sayHello message with custom message and target parameter",
		hello := Hello cloneWithoutInit init ("Hi")
		expect(hello sayHello("Pietro")) toBe ("Hi, Pietro!")
	),
	
	it("sayHello message with DEFAULT target parameter",
		hello := Hello clone
		expect(hello sayHello) toBe ("Hello, World!")
	)
)


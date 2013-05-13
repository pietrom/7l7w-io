foobar := Object clone

foobar foo := method (
	"FOO"
)

foobar bar := method (
	"BAR"
)

foobar forward := method (
	result := call message name .. ":"
	args := call message argsEvaluatedIn(call sender)
	args foreach (i, a, 
		result := result .. a .. ","
	)
	len := result size
	last := result at(len - 1) asCharacter
	if(last == ",", result := result inclusiveSlice(0, len - 2))
	result .. ";"
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
	),
	
	it("Intercept undefined methods using forward message",
		result := foobar aMethod("P", 19)
		expect(result) toBe ("aMethod:P,19;")
	),
	
	it("Evaluate slot content as code",
		text := "return \"FOO\""
		result := doString(text)
		expect(result) toBe ("FOO")
	),
	
	it("Evaluate slot content as method",
		text := "method ( return 19 )"
		result := doString(text)
		expect(result) toBe (19)
	)
)


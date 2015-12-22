vp = project.helpers.verbosePrint

vp: "Loaded emunit/core."

assertions = directory.assertions

##########
# new: function
# Creates a test object that responds to the following methods:
#   .run
#   .print
#
# Receives:
#   description: A human readable description of the test
#   assertion: An assertion object (documented under assertion)
##########

testPrototype = [
        description = "empty description"
        assertion   = assertions.baseObject
        run ^       = runTest: current.assertion
]

defTest ^d a = {
    [
        parent = testPrototype

        description = d
        assertion = a
    ]
}


##########
# results: object
#
# [
#     description: <test.description string>
#     assertion:   <test.assertion function>
#     actual:      <run test>
#     failed:      <Boolean>
# ]
##########

runTest ^assertion = {
      println: assertion.expected
#      println "moo"
#    do: assertion.matcher
}

prettyPrintTest ^test ^count = {
    testNumberLine = "Running test #" + count + ":"
    println: testNumberLine
}

##########
# assertion: object
#
# [
#     matcher:     <function>
#     context:     <scope variables, etc>
#     subject:     <Function>
#     expected:    <Boolean>
# ]
#
# Examples:
# [
#     matcher  = ^(eq)
#     context  = ^(name = "Harper")
#     subject  = ^(name + "is a good dog!")
#     expected = "Harper is a good dog!"
# ]
#
# [
#     matcher  = ^(.gt)
#     subject  = ^(3 + 7)
#     expected = 6
# ]
##########

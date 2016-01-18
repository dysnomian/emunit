project.helpers.verbosePrint: "Loaded emUnit/test."

assertions = project.assertions
underscore = project.helpers.printUnderscores

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

baseObject = [
    description = "empty description"
    assertion   = assertions.baseObject
    run ^       = runTest: this.assertion
]

runTest ^assertion = {
    do: assertion.context

    println: do: assertion.eval
}

prettyPrintTest ^test ^count = {
    testNumberLine = "Running test #" + count + ":"
    println: testNumberLine
    underscore: testNumberLine

    runTest: test.assertion
}

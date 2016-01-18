project.helpers.verbosePrint: "Loaded emUnit/core."

emUnit = project.core
assertions = project.assertions
tests = project.tests

assertion = [
    matcher   = ^(.eq)
    subject   = ^(this.name + " is a good dog!")
    expected  = "Harper is a good dog!"
    context   = ^(name = "Harper")
    parent    = assertions.baseObject

]


test = [
    parent = tests.baseObject
    description = "Harper test"
    assertion = assertion
]

# println: test.description
# println: test.assertion.expected

println "Loaded core-spec"

emunit = package.em-unit.core

assertion = [
    parent    = emunit.assertionPrototype
    matcher   = ^(.eq)
    context ^ = (name = "Harper")
    subject   = ^(name + " is a good dog!")
    expected  = "Harper is a good dog!"
]


test = [
  parent = emunit.testPrototype
  description = "Harper test"
  assertion = assertion
]

# println: test.description
# println: test.assertion.expected

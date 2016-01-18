# TODO: Document this!
project.helpers.verbosePrint: "Loaded emUnit/assertions."

baseObject = [
    matcher ^ = println
    context ^ = null
    subject ^ = "empty assertion subject"
    expected  = "empty assertion expectation"

    do: this.context
    eval    ^ = this.matcher this.subject this.expected
]

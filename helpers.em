config          = project.config
verbosePrinting = project.config.verbosePrinting

verbosePrint ^arg = {
    if (verbosePrinting == true) println: arg
}

printUnderscores ^string = {
    string.char.each ^(print: "-")
    println ""
}

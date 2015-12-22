# Configuration
\version 0.3b

(
    vp = project.helpers.verbosePrint
    vp: "Loaded testRunner.em"
)

(
    emunit = package.emunit.core
    coreSpec = project.test.coreSpec
)

do: test.run

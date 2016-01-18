# Configuration
\version 0.3b

project.helpers.verbosePrint: "Loaded testRunner.em"

(
    core     = project.core
    coreSpec = project.test.coreSpec
)

do: coreSpec.test.run

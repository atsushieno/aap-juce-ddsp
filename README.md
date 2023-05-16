# {project name}: your project descirption goes here

## What is this?

It is a port of [magenta/ddsp-vst](https://github.com/magenta/ddsp-vst) to [AAP (Audio Plugins For Android)](https://github.com/atsushieno/aap-core).

We are actually using [tank-trax/ddsp-vst](https://github.com/tank-trax/ddsp-vst) which perfectly builds on Linux for better CI setup.

## How to build

`make` will take care of the entire build.

If you just run `./gradlew build` then it will not build any required Maven
dependencies, and also you will be skipping the "patching" step, which is
necessary to make the to-be-imported project ready for AAP.

For further information about aap-juce, see https://github.com/atsushieno/aap-juce


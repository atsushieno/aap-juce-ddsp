# aap-juce-ddsp: port of ddsp-vst to AAP

## What is this?

It is a port of [magenta/ddsp-vst](https://github.com/magenta/ddsp-vst) to [AAP (Audio Plugins For Android)](https://github.com/atsushieno/aap-core).

So far we cannot build more than one plugin within an aap-juce project, so only DDSPSynth is ported. It should be fairly easy to do the same for DDSPEffect too.

We are actually using [tank-trax/ddsp-vst](https://github.com/tank-trax/ddsp-vst) which perfectly builds on Linux for better CI setup.

## How to build

`make` will take care of the entire build.

If you just run `./gradlew build` then it will not build any required Maven
dependencies, and also you will be skipping the "patching" step, which is
necessary to make the to-be-imported project ready for AAP.

For further information about aap-juce, see https://github.com/atsushieno/aap-juce

## Licenses

aap-juce-ddsp is released under the GPLv3 license.

ddsp-vst is released under the Apache V2 license.


# {project name}: your project descirption goes here

## Remove this section in your project

### How to use this project template

This project template is designed to incorporate *existing* CMake-based JUCE
plugin project. Here is the repository structure:

- `app`: it will be the AAP project i.e. it contains AudioPluginService
- `external`
  - `aap-core` : AAP core submodule. It will be updated every time we release a new version
  - `aap-juce` : ditto for aap-juce repository.
- `aap-juce-support.patch` : your patch to the JUCE plugin project you are importing.

There are couple of things you are supposed to do:

- `cd external` and `git add submodule [the-JUCE-plugin-project]` there.
- You will have to make changes to the JUCE plugin project you are going to
  import. Once you are done, run `cd external/{the-repo}` and then
  `git diff > ../../aap-juce-support.patch` to generate the patch

For further information about aap-juce, see https://github.com/atsushieno/aap-juce

### LICENSE

We do not claim any copyright on the template itself. But note that JUCE and aap-juce are released under the GPLv3 license.

----

## What is this?

It is a port of --THE-PLUGIN-NAME-GOES-HERE-- to [AAP (Audio Plugins For Android)](https://github.com/atsushieno/aap-core).

## How to build

`make` will take care of the entire build.

If you just run `./gradlew build` then it will not build any required Maven
dependencies, and also you will be skipping the "patching" step, which is
necessary to make the to-be-imported project ready for AAP.

For further information about aap-juce, see https://github.com/atsushieno/aap-juce


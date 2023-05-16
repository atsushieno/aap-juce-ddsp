
PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

# Specify the app name. It will show up as the Main Launcher.
APP_NAME=DDSPSynth

APP_BUILD_DIR=$(PWD)
# Specify the app repo as a submodule
APP_SRC_DIR=$(PWD)/external/ddsp-vst
# Typical JUCE app submodules JUCE, but the location is up to the project.
JUCE_DIR=$(APP_SRC_DIR)/externals/JUCE

# FIXME: we didn't use `make update-aap-metadata-cmake` this time, but rather indicated
# to build build aap-metadata-generator-${APP_NAME}` in CMakeLists.txt.
# Probably it should be the way to go in the future.
# Seealso https://github.com/atsushieno/aap-juce/issues/43
APP_SHARED_CODE_LIBS="$(APP_NAME)_artefacts/lib${APP_NAME}_SharedCode.a libAssets.a"

# It can be any name, just make sure you generate the diff for AAP support,
# otherwise it will only build for Android without AAP.
# Make sure to include submodule changes (by e.g. git diff --submodule=diff)
PATCH_FILE=$(PWD)/aap-juce-support.patch
PATCH_DEPTH=1

PRE_BUILD_TASKS=repo-init

# looks like DDSP-DST on osx is built as x86_64 binary. We need to avoid arm64 toolchains
ifeq ($(shell uname), 'Darwin')
PLAT_COMPILER="arch -x86_64 xcrun clang"
endif

include $(AAP_JUCE_DIR)/Makefile.cmake-common

repo-init: external/ddsp-vst/app-make.stamp

external/ddsp-vst/app-make.stamp:
	cd external/ddsp-vst && ./repo-init.sh && touch app.stamp

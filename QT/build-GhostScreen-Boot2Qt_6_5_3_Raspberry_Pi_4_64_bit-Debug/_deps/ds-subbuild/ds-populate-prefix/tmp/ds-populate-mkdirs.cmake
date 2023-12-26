# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-src"
  "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-build"
  "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-subbuild/ds-populate-prefix"
  "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-subbuild/ds-populate-prefix/tmp"
  "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
  "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-subbuild/ds-populate-prefix/src"
  "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/kegmulayim/Documents/GitHub/GhostScreen/QT/build-GhostScreen-Boot2Qt_6_5_3_Raspberry_Pi_4_64_bit-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()

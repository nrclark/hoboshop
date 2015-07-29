# hoboshop

## Introduction

This repository is used as a scratchpad / workspace for an experimental port
of DPKG/APT to Cygwin.

## Status

At present, a patch set has been worked out that enables DPKG to build successfully. It
passes most of its test suite, except for 3 tests that fail because Cygwin appears to
generate names FIFOs with different permissions than DPKG expects. No big deal there.

APT has proved to be more of a challenge, but it's in progress. Stay tuned.

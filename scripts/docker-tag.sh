#!/bin/bash

# Determine the tag for Docker images based on GitHub Actions environment
# variables.

set -eo pipefail

# For push events
echo ${GITHUB_REF} | sed -E 's,refs/(heads|tags)/,,' | sed -E 's,/,-,g'

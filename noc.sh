#!/bin/bash

# cd $(dirname $BASH_SOURCE)
# bundle exec bin/noc $*

RUBYLIB=$(dirname $BASH_SOURCE)/lib $(dirname $BASH_SOURCE)/bin/noc $*

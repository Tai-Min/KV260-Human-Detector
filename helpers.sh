#! /bin/bash

info() {
   local NC='\033[0m'
   local BLUE='\033[0;34m'
   echo -e "${BLUE}$1${NC}"
}

success() {
   local NC='\033[0m'
   local GREEN='\033[0;32m'
   echo -e "${GREEN}$1${NC}"
}

warning() {
   local NC='\033[0m'
   local YELLOW='\033[0;33m'
   echo -e "${YELLOW}$1${NC}"
}

error() {
   local NC='\033[0m'
   local RED='\033[0;31m'
   echo -e "${RED}$1${NC}"
}

# Echoes 1 if array contains element.
# Usage: $(contains "element" ${arr[@]})
# Returns: 0 on success and 1 if there is no such element.
contains() {
   local e 
   local match="$1"
   shift
   for e; do [[ $e = $match ]] && echo "1" && return 0; done
   echo "0"
   return 1
}

# Stops the 
failHandler() {
   if [[ $? != 0 ]]
   then
      cleanup 1
   fi
   success "Done!"
}
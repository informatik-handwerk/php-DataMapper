#!/bin/bash
set -eu
set -o pipefail

dirScript="$(dirname "$0")"

set -x

COMPOSER_MEMORY_LIMIT=-1 composer update --with-all-dependencies
#composer symfony:recipes --outdated

"$dirScript/dump-autoload.sh"


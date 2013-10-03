
. ../Config.sh

INSTALL_PREFIX="$DOTUSR_ROOT"/bootstrap

# XXX should not use DOTUSR_ROOT here, but LAYER_ROOT
# XXX should find subdir/layername from $(basename $PWD)
# XXX This file could probably be made generic (mostly)

set -e
set -u
set -x


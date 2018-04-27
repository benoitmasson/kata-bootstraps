ARGS=$@
if test $# -lt 1; then
  # test all packages if no arguments given
  ARGS="-r"
fi

# Run tests and keep watching for changes
GOPATH="`realpath "\`dirname "$0"\`"`":"$GOPATH" ginkgo watch $ARGS

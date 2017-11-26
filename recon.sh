#!/bin/bash

dir=$(dirname $0)

case $1 in
		"init")
		$dir/recon-init.sh "$2"
		;;
		"track")
    $dir/recon-track.sh "$2" "$3"
		;;
		"sync")
		$dir/recon-sync.sh
		;;
    "history")
		$dir/recon-history.sh "$2" "$3"
		;;
		*)
		echo "usage: recon.sh {init|track|sync} [<args>]"
		;;
esac

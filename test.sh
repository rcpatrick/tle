#!/bin/bash
function printsatno
{
  return $1 
}

workingdir=$(pwd)
tlefile=$workingdir/tle

case "$1" in
	sat) test=$(printsatno $2)
	     echo $test
esac

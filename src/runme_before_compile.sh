#!/bin/bash

MASTER='fireball-thunder'

for i in a.GLOBAL b.FUNCTIONS c.SYSTEM f.MPI g.XC_FUNCTIONALS j.ASSEMBLERS n.NAC p.HARRIS q.DOGS libs include MACHINES Makefile
do
    if [ -e $i ]
    then
	rm $i
    fi
    ln -s ../../${MASTER}/src/$i
done

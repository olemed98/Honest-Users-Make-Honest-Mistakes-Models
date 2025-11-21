#/bin/bash

for x in Password AppOnly AppOnlyCompare AppOnlyWrite TwoFactor TwoFactorCompare TwoFactorWrite WebAuthn ; do
	for y in "" _Plus ; do
		test -f $x$y.spthy &&
		( echo "===== $x$y.spthy" ;
		echo "===== $x$y.spthy" >> run-log.txt ;
		/usr/bin/time -a -o run-log.txt -l tamarin-prover --quit-on-warning --prove $x$y.spthy > $x$y.result 2>&1 ; )
	done ;
done

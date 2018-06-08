# A simple image for BearSSL's brssl command line utility

## Private Keys, Trust Anchors and Certificate Chains

In order to use `verify`, `skey`, `ta`, and `chain` subcommands just bind mount the local directory containing your keys and certificates to `/certs`. Then run the container passing the subcommand and the filename for the cert/key you would work on.

    docker run --rm -ti -v </path/to/certs>:/certs manchoz/brssl verify cert1.pem -CA chain1.pem

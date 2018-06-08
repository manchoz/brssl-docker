# A simple image for BearSSL's brssl command line utility

## Private Keys, Trust Anchors and Certificate Chains

In order to use `verify`, `skey`, `ta`, and `chain` subcommands just bind-mount the (local) directory containing keys and certificates to `/certs`. Then, run the container with the subcommand and the filename for the cert/key you want to work on.

    $ docker run --rm -ti -v </path/to/certs>:/certs manchoz/brssl verify cert1.pem -CA chain1.pem

### Creating a shell alias for `brrsl`

You may create a shell alias for checking certs and keys in *current* directories.

    $ alias brssl="docker run --rm -ti -v \$PWD:/certs manchoz/brssl"
    $ brssl ta cert1.pem



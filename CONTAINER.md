
cybermaggedon/cyberprobe-configure: Automatically configures cyberprobe
TLS deliver and endpoint configuration from a configuration service.

Environment variables:

- `KEY` - secret key used to talk to the configurator.

- `CONFIG` - location of the cyberprobe configuration file.

- `CREDS` - location of a directory where the credentials can be used.

To use successfully, this should be used as a sidecar on a cyberprobe
container.  Both CONFIG and CREDS need to point to filesystem space which
is shared with the cyberprobe container.


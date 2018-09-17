
cyberprobe-configure: Automatically configures cyberprobe TLS deliver
and endpoint configuration from a configuration service.

Usage:
```
  cyberprobe-configure [<config>]
```
reads a config file specified (default is /etc/cyberprobe-configure) for
configuration settings. The file is a JSON file, an object with the
following keys:

- `key`: Secret key: Can be a literal string, a filename, or if it begins with
  $ specifies an environment variable containing a literal key or file.
- `configfile`: Configuration file to edit.
- `creds_dir`: Directory, where credentials (certs and keys) are written.
- `url`: URL endpoint of the configuration service.
- `client_verify`: Can be false, true (default) or the name of a file
  containing trusted CA certificates.

Builds from <https://github.com/cybermaggedon/cyberprobe-configuration>

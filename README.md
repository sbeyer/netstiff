# netstiff

*netstiff* (formerly known as *webdiff*) is a powerful Web and FTP site
update checker.

*netstiff* supports a variety of different methods to check for updates,
e.g., check for differences of the file, of the text after HTML rendering,
of the size, the date, MD5 sum, or check for a regular expression).

Although there is no graphical user interface, *netstiff* is easy to use.

You can configure it interactively or by directly changing the config
file. Without any given arguments, *netstiff* will run its interactive
configuration tool if no configuration file exists, otherwise it will
check your sites for updates and print the changes in a diff-like manner.

## Requirements

  * Ruby standard distribution (net::http, net::ftp, uri, pstore)
  * optional:
    * GNU Readline for Ruby
    * OpenSSL for Ruby

## License

*netstiff* is licensed under the GNU General Public License (version 3).
See LICENSE for more information.

## Screenshots

The main menu of the interactive configuration tool:

![Interactive configuration tool](http://pkqs.net/~sbeyer/btwoftheday/pic/20070621a.png)

The diff-view of FTP changes:

![Diff](http://pkqs.net/~sbeyer/btwoftheday/pic/20070621c.png)

## Documentation

*netstiff* comes with an elaborate manual page that should help in case
something is not self-explanatory.

For further questions, feel free to contact me directly.

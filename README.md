# tle

Get these features with minimum reliance on bloated proprietary tools or Web-based "solutions":

- Extract TLEs from the current spacetrack catalog
- Powerful regex-based searching and filtering based on SATNO, international designator, launch year, inclination, or anything else
- Maintain your own local copy of the spacetrack catalog (requires Space-Track.org account)
- Generate look angles for any satellite(s) and any place(s) on Earth (Coming soon)

## Install and Use

```
git clone git://git.raypatrick.xyz/tle.git
cd tle
sudo make install
```

The program is run with the command `tle`.

## Dependencies
- `Bash or Bash-compatible shell` (for now ... soon it will be POSIX shell compliant)
- `GNU sed`

### Optional
- `cron` - For scheduling automatic downloads of new TLEs
- `space-track.org` account - Required for programmatic downloads 

## Help the Project!

- Try `tle` on different machines and use cases (personal computers, Web servers, etc.) and report any errors.
- Submit bug reports, feature requests, or ideas to make existing code better.

See the author's website [here](https://raypatrick.xyz). Email him at [ray@raypatrick.xyz](mailto:ray@raypatrick.xyz).

`tle` is free/libre software, licensed under the GPLv3.

## To-do
- Add SGP4/SDP4 capability

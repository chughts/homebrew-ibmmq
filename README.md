# IBM MQ Toolkit for MacOS (Brew installer)
This repo provides the IBM MQ Toolkit for MacOS as a Brew cask.
The cask is a simple wrapper for the publically delivered toolkit `.pkg` file.


## Version
The cask installs the publically available version of the toolkit `9.4.3.0`

## Create Tap
To register this repository as a tap, run the command

```
brew tap ibm-messaging/ibmmq
```

## How do I install the cask?
Installing this cask means **you have accepted the license** at:
https://ibm.biz/mqdevmacclient

If you accept these license terms, then you may proceed with the install by running the command:

```
brew install ibm-messaging/ibmmq/mqdevtoolkit
```

If you do not accept these license terms then do not install. If you do not accept these license terms but have already installed, then uninstall the cask by following the uninstall instructions.   

## Post install - setting up your environment

To make it easier to use the devtoolkit, you might want to:

add the `/opt/mqm/bin` directory to your `PATH` environment variable e.g.,:

```
export PATH=/opt/mqm/bin:$PATH
```

add locations of the bin directories `/opt/mqm/bin` and `/opt/mqm/samp/bin` to the PATH by editing `/etc/paths`

set the `DYLD_LIBRARY_PATH` e.g.,:

```
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/opt/mqm/lib64
```

## How do I uninstall the cask?

```
brew uninstall ibm-messaging/ibmmq/mqdevtoolkit
```


## How do I find upgrade for the cask?
Check for an update 

```
brew update
```

If an upgrade is available, then you can install it. 

```
brew upgrade ibm-messaging/ibmmq/mqdevtoolkit
```

## Where's the other cask?
We've deleted the `devtoolkit` cask. We changed the name to `mqdevtoolkit` a few releases ago, and as warned we have removed it. 

## What's this Note:
If you are on a x86_64 MacOS then you will see the following warning on 
install.

```
NOTE: The next release of this toolkit will not include x86_64 binaries.
```

The current toolkit is a universal binary built for both ARM64 and x86_64 MacOS architectures. The next release will be ARM64 only.


## Delete Tap
To unregister this repository as a tap, run the command

```
brew untap ibm-messaging/ibmmq
```

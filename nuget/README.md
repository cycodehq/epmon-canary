# cycode-epmon-canary

A harmless .NET tool that Cycode EPMON flags on purpose. Installing it on a
protected machine is blocked, which is how you verify the install:

```sh
dotnet tool install -g cycode-epmon-canary
# [BLOCK] nuget cycode-epmon-canary@1.0.0 reason=flagged by cycode-intel: EPMON canary package
```

On .NET SDK 10 and later, `dnx cycode-epmon-canary` runs the same check
without installing anything.

If the install succeeds, EPMON is not wrapping your package manager. Running
the tool says so:

```sh
cycode-epmon-canary
# cycode-epmon-canary installed and ran. This package is flagged on purpose, so Cycode EPMON is not protecting this package manager.
```

The package contains no install scripts, no dependencies and no network code.

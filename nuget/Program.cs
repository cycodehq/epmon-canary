// Harmless tool that Cycode EPMON flags on purpose.
//
// On a machine protected by EPMON the install is blocked, so this code never
// runs there. If it does run, the package manager is not being wrapped.
const string Message =
    "cycode-epmon-canary installed and ran. This package is flagged on purpose, " +
    "so Cycode EPMON is not protecting this package manager.";

Console.WriteLine(Message);

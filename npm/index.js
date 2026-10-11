'use strict';

// Message printed when the canary is installed and run: on a machine
// protected by Cycode EPMON the install is blocked and this never executes.
const MESSAGE =
  'cycode-epmon-canary installed and ran. This package is flagged on purpose, ' +
  'so Cycode EPMON is not protecting this package manager.';

function canary() {
  return MESSAGE;
}

module.exports = { canary, MESSAGE };

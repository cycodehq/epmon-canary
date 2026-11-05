require_relative "lib/cycode_epmon_canary"

Gem::Specification.new do |spec|
  spec.name = "cycode-epmon-canary"
  spec.version = CycodeEpmonCanary::VERSION
  spec.summary = "Harmless package flagged by Cycode EPMON on purpose, so you can verify the install is protected"
  spec.authors = ["Cycode"]
  spec.license = "MIT"
  spec.homepage = "https://github.com/cycodehq/epmon-canary#readme"
  spec.metadata = {
    "source_code_uri" => "https://github.com/cycodehq/epmon-canary/tree/main/rubygems",
    "bug_tracker_uri" => "https://github.com/cycodehq/epmon-canary/issues",
    "rubygems_mfa_required" => "true"
  }
  spec.required_ruby_version = ">= 2.7"
  spec.files = ["lib/cycode_epmon_canary.rb", "exe/cycode-epmon-canary", "README.md", "LICENSE"]
  spec.bindir = "exe"
  spec.executables = ["cycode-epmon-canary"]
end

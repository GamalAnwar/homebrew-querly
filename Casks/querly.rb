cask "querly" do
  version "1.4.3"
  sha256 "05ddcd86bd035d5418f18fc811a578e50686ecf0049a59bfe7475c36797fc6eb"

  url "https://github.com/quietkit/Querly/releases/download/v#{version}/Querly-#{version}.zip"
  name "Querly"
  desc "Fast native macOS database client for MySQL, PostgreSQL, and SQLite"
  homepage "https://github.com/quietkit/Querly"

  app "Querly.app"

  # Querly is ad-hoc signed (not yet notarized). Strip the quarantine flag on
  # install so Homebrew users don't hit the macOS Gatekeeper "could not verify"
  # wall. The caveat below is a fallback note in case this is ever skipped.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Querly.app"]
  end

  caveats <<~EOS
    Querly is ad-hoc signed (not yet notarized). This cask clears the macOS
    Gatekeeper quarantine flag automatically on install, so you can open Querly
    normally.

    If macOS still blocks it (e.g. after a manual download), run once:

      xattr -dr com.apple.quarantine "/Applications/Querly.app"

    (Notarization is on the roadmap.)
  EOS
end

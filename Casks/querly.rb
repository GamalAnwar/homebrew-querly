cask "querly" do
  version "1.0.0"
  sha256 "8e633907967718002e21175572a1930b5bc5534f632df1d02f21ebd149289ce8"

  url "https://github.com/quietkit/Querly/releases/download/v#{version}/Querly-#{version}.zip"
  name "Querly"
  desc "Fast native macOS database client for MySQL, PostgreSQL, and SQLite"
  homepage "https://github.com/quietkit/Querly"

  app "Querly.app"

  caveats <<~EOS
    Querly is ad-hoc signed (not yet notarized), so macOS Gatekeeper will block
    it on first launch. To allow it, run this once after installing:

      xattr -dr com.apple.quarantine "/Applications/Querly.app"

    Then open Querly normally. (Notarization is on the roadmap.)
  EOS
end

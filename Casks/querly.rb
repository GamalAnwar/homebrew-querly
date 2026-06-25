cask "querly" do
  version "1.4.2"
  sha256 "65e3dae861cb84c8a7cb6c98e20b6c2549c74c8626d92118f7f613e66eb8480e"

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

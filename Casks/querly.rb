cask "querly" do
  version "1.0.0"
  sha256 "9fb92eb57cd292e8e358cbaf44fa9ab137b7d01a2d4e5961042a596ddbae42b5"

  url "https://github.com/GamalAnwar/Querly/releases/download/v#{version}/Querly-#{version}.zip"
  name "Querly"
  desc "Fast native macOS database client for MySQL, PostgreSQL, and SQLite"
  homepage "https://github.com/GamalAnwar/Querly"

  app "Querly.app"

  caveats <<~EOS
    Querly is ad-hoc signed (not yet notarized). On first launch macOS may block it.
    To open: right-click Querly.app in /Applications and choose "Open", or run:
      xattr -dr com.apple.quarantine "/Applications/Querly.app"
  EOS
end

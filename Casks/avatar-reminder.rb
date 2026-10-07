cask "avatar-reminder" do
  version "1.0.3"
  sha256 "cca621485a0b6c2f87da4dc042ed935cb76f44fde3a57f1e8ecc22328dbc0ecf"

  url "https://github.com/gollasandeepkumar/AvatarReminder-releases/releases/download/v#{version}/AvatarReminderApp-#{version}.zip"
  name "Avatar Reminder App"
  desc "Animated character that reminds you to drink water, stretch and rest your eyes"
  homepage "https://gollasandeepkumar.github.io/AvatarReminder-releases/"

  auto_updates true
  depends_on macos: :sonoma

  app "Avatar Reminder App.app"

  zap trash: [
    "~/Library/Application Support/AvatarReminder",
    "~/Library/Caches/io.github.gollasandeepkumar.reminderapp",
    "~/Library/HTTPStorages/io.github.gollasandeepkumar.reminderapp",
    "~/Library/Preferences/io.github.gollasandeepkumar.reminderapp.plist",
  ]

  caveats <<~EOS
    Avatar Reminder App isn't notarized by Apple yet, so macOS blocks it the first time.
    Open System Settings → Privacy & Security and click Open Anyway. You only do this once.
  EOS
end

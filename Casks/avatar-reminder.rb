cask "avatar-reminder" do
  version "1.0.0"
  sha256 "cbba9a098fb543fe020824f799ef7fd0ec1c5876b73c579ec1602f1161af243e"

  url "https://github.com/gollasandeepkumar/AvatarReminder-releases/releases/download/v#{version}/AvatarReminderApp-#{version}.zip"
  name "Avatar Reminder App"
  desc "Animated character that reminds you to drink water, stretch and rest your eyes"
  homepage "https://gollasandeepkumar.github.io/AvatarReminder-releases/"

  auto_updates true
  depends_on macos: ">= :sonoma"

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

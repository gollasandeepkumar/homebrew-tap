cask "avatar-reminder" do
  version "1.0.4"
  sha256 "2dae17566edf81de273aa1bf3027b56242bbf1ce14d6d50fdc51a985ceec922c"

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

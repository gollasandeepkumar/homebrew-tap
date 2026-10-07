cask "avatar-reminder" do
  version "1.0.1"
  sha256 "2766ca897abf165c399740f3ec1aeb70230d553876e7840ce329cea23e9aa962"

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

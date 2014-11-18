Pod::Spec.new do |s|
  s.name             = "BPOReminder"
  s.version          = "1.0.0"
  s.summary          = "BPOReminder schedules local notifications after a given period of time. You can use it to remind your users to come back to your app."
  s.homepage         = "https://github.com/BYTEPOETS/BPOReminder"
  s.license          = 'MIT'
  s.author           = { "BYTEPOETS" => "office@bytepoets.com" }
  s.source           = { :git => "https://github.com/BYTEPOETS/BPOReminder.git", :tag => s.version.to_s }

  s.platform         = :ios, '7.0'
  s.requires_arc     = true

  s.source_files     = 'BPOReminder'
end

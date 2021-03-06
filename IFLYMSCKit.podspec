Pod::Spec.new do |s|

  s.name         = "IFLYMSCKit"
  s.version      = "1.165"
  s.summary      = "科大讯飞_语音听写"
  s.description  = <<-DESC
                    科大讯飞 iOS 语音听写 SDK
                   DESC

  s.homepage     = "https://github.com/AxlTom/IFLYMSCKit"
  s.license      = "MIT"
  s.author       = { "Limon" => "axlcaiwenqiang@sina.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/AxlTom/IFLYMSCKit.git", :tag => "#{s.version}" }

  s.vendored_frameworks = 'lib/iflyMSC.framework'

  s.xcconfig            = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/iflyMSCKit/**\"" }

  s.frameworks = 'CoreLocation', 'CoreTelephony', 'AVFoundation', 'Contacts', 'AddressBook', 'AudioToolbox', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics'
  s.libraries = 'z','c++'

  s.requires_arc = false

  s.prepare_command     = <<-EOF
  mkdir Source/iflyMSC.framework/Modules
  touch Source/iflyMSC.framework/Modules/module.modulemap
  cat <<-EOF > Source/iflyMSC.framework/Modules/module.modulemap
  framework module iflyMSC {
      header "IFlyMSC.h"
      header "IFlyAudioSession.h"
      header "IFlyContact.h"
      header "IFlyDataUploader.h"
      header "IFlyDebugLog.h"
      header "IFlyISVDelegate.h"
      header "IFlyISVRecognizer.h"
      header "IFlyRecognizerView.h"
      header "IFlyRecognizerViewDelegate.h"
      header "IFlyResourceUtil.h"
      header "IFlySetting.h"
      header "IFlySpeechConstant.h"
      header "IFlySpeechError.h"
      header "IFlySpeechEvaluator.h"
      header "IFlySpeechEvaluatorDelegate.h"
      header "IFlySpeechEvent.h"
      header "IFlySpeechRecognizer.h"
      header "IFlySpeechRecognizerDelegate.h"
      header "IFlySpeechSynthesizer.h"
      header "IFlySpeechSynthesizerDelegate.h"
      header "IFlySpeechUnderstander.h"
      header "IFlySpeechUtility.h"
      header "IFlyTextUnderstander.h"
      header "IFlyUserWords.h"
      header "IFlyPcmRecorder.h"
      header "IFlyVoiceWakeuper.h"
      header "IFlyVoiceWakeuperDelegate.h"

      export *

      link "z"
      link "c++"
  }
  \EOF
  EOF
end

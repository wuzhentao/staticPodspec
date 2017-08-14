 Pod::Spec.new do |s|
	   	s.name             = 'Crashlytics'
		   s.version          = '3.8.5'
		   s.summary          = 'A short description of libCrashlytics.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'Crashlytics/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'Crashlytics/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'Crashlytics/Headers/*'
         	static.source_files = 'Crashlytics/Headers/*'
         end
                                               
         s.vendored_frameworks =  "Crashlytics/iOS/Crashlytics.framework"
         s.frameworks =  "Security", "SystemConfiguration"
         s.library =  "z", "c++"
         s.dependency "Fabric"
end

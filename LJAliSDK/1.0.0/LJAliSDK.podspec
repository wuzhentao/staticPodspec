 Pod::Spec.new do |s|
	   	s.name             = 'LJAliSDK'
		   s.version          = '1.0.0'
		   s.summary          = 'A short description of libLJAliSDK.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'LJAliSDK/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'LJAliSDK/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'LJAliSDK/Headers/*'
         	static.source_files = 'LJAliSDK/Headers/*'
         end
                                               
         s.vendored_frameworks =  "LJAliSDK/LJAliSDK/LJAliSDK/AlipaySDK.framework", "LJAliSDK/LJAliSDK/LJAliSDK/AlipaySDK.framework"
         s.resources =  "LJAliSDK/LJAliSDK/LJAliSDK/AlipaySDK.bundle", "LJAliSDK/LJAliSDK/LJAliSDK/AlipaySDK.bundle"
         s.frameworks =  "SystemConfiguration", "CoreTelephony", "Security", "CoreMotion", "CFNetwork", "UIKit", "SystemConfiguration", "CoreTelephony", "Security", "CoreMotion", "CFNetwork", "UIKit"
         s.library =  "z.1.1.3", "c++", "z.1.1.3", "c++"
end

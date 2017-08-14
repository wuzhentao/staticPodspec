 Pod::Spec.new do |s|
	   	s.name             = 'AFNetworking'
		   s.version          = '3.1.0'
		   s.summary          = 'A short description of libAFNetworking.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'AFNetworking/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'AFNetworking/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'AFNetworking/Headers/*'
         	static.source_files = 'AFNetworking/Headers/*'
      		static.vendored_libraries =  "AFNetworking/libAFNetworking.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "AFNetworking/AFNetworking/AFNetworking.h", "AFNetworking/AFNetworking/AFNetworking.h", "AFNetworking/AFNetworking/AF{URL,HTTP}SessionManager.{h,m}", "AFNetworking/AFNetworking/AF{URL,HTTP}SessionManager.h", "AFNetworking/AFNetworking/AFNetworkReachabilityManager.{h,m}", "AFNetworking/AFNetworking/AFNetworkReachabilityManager.h", "AFNetworking/AFNetworking/AFSecurityPolicy.{h,m}", "AFNetworking/AFNetworking/AFSecurityPolicy.h", "AFNetworking/AFNetworking/AFURL{Request,Response}Serialization.{h,m}", "AFNetworking/AFNetworking/AFURL{Request,Response}Serialization.h", "AFNetworking/UIKit+AFNetworking", "AFNetworking/UIKit+AFNetworking/*.h", "AFNetworking/AFNetworking/AFNetworking.h", "AFNetworking/AFNetworking/AF{URL,HTTP}SessionManager.{h,m}", "AFNetworking/AFNetworking/AFNetworkReachabilityManager.{h,m}", "AFNetworking/AFNetworking/AFSecurityPolicy.{h,m}", "AFNetworking/AFNetworking/AFURL{Request,Response}Serialization.{h,m}", "AFNetworking/UIKit+AFNetworking"
         end
                                               
         s.frameworks =  "SystemConfiguration", "Security", "MobileCoreServices", "CoreGraphics", "SystemConfiguration", "Security", "MobileCoreServices", "CoreGraphics"
end

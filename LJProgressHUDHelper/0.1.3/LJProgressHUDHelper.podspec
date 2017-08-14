 Pod::Spec.new do |s|
	   	s.name             = 'LJProgressHUDHelper'
		   s.version          = '0.1.3'
		   s.summary          = 'A short description of libLJProgressHUDHelper.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'LJProgressHUDHelper/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'LJProgressHUDHelper/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'LJProgressHUDHelper/Headers/*'
         	static.source_files = 'LJProgressHUDHelper/Headers/*'
      		static.vendored_libraries =  "LJProgressHUDHelper/libLJProgressHUDHelper.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "LJProgressHUDHelper/LJProgressHUDHelper/Class/*"
         end
                                               
         s.resources =  "LJProgressHUDHelper/LJProgressHUDHelper/Resource/*.bundle"
         s.frameworks =  "UIKit"
         s.dependency "MBProgressHUD"
end

 Pod::Spec.new do |s|
	   	s.name             = 'MBProgressHUD'
		   s.version          = '0.9.2'
		   s.summary          = 'A short description of libMBProgressHUD.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'MBProgressHUD/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'MBProgressHUD/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'MBProgressHUD/Headers/*'
         	static.source_files = 'MBProgressHUD/Headers/*'
      		static.vendored_libraries =  "MBProgressHUD/libMBProgressHUD.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "MBProgressHUD/*.{h,m}"
         end
                                               
         s.frameworks =  "CoreGraphics"
end

 Pod::Spec.new do |s|
	   	s.name             = 'YYModel'
		   s.version          = '1.0.4'
		   s.summary          = 'A short description of libYYModel.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'YYModel/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'YYModel/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'YYModel/Headers/*'
         	static.source_files = 'YYModel/Headers/*'
      		static.vendored_libraries =  "YYModel/libYYModel.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "YYModel/YYModel/*.{h,m}"
         end
                                               
         s.frameworks =  "Foundation", "CoreFoundation"
end

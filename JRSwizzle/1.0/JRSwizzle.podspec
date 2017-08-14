 Pod::Spec.new do |s|
	   	s.name             = 'JRSwizzle'
		   s.version          = '1.0'
		   s.summary          = 'A short description of libJRSwizzle.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'JRSwizzle/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'JRSwizzle/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'JRSwizzle/Headers/*'
         	static.source_files = 'JRSwizzle/Headers/*'
      		static.vendored_libraries =  "JRSwizzle/libJRSwizzle.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "JRSwizzle/*.{h,m}"
         end
                                               
         s.frameworks =  "Foundation"
end

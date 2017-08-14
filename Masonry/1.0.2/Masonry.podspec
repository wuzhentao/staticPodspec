 Pod::Spec.new do |s|
	   	s.name             = 'Masonry'
		   s.version          = '1.0.2'
		   s.summary          = 'A short description of libMasonry.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'Masonry/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'Masonry/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'Masonry/Headers/*'
         	static.source_files = 'Masonry/Headers/*'
      		static.vendored_libraries =  "Masonry/libMasonry.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "Masonry/Masonry/*.{h,m}"
         end
                                               
         s.frameworks =  "Foundation", "UIKit"
end

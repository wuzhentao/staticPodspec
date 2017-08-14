 Pod::Spec.new do |s|
	   	s.name             = 'SDWebImage'
		   s.version          = '4.1.0'
		   s.summary          = 'A short description of libSDWebImage.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'SDWebImage/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'SDWebImage/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'SDWebImage/Headers/*'
         	static.source_files = 'SDWebImage/Headers/*'
      		static.vendored_libraries =  "SDWebImage/libSDWebImage.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "SDWebImage/SDWebImage/{NS,SD,UI}*.{h,m}", "SDWebImage/SDWebImage/FLAnimatedImage/*.{h,m}"
         end
                                               
         s.frameworks =  "ImageIO"
end

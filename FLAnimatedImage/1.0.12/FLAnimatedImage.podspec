 Pod::Spec.new do |s|
	   	s.name             = 'FLAnimatedImage'
		   s.version          = '1.0.12'
		   s.summary          = 'A short description of libFLAnimatedImage.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'FLAnimatedImage/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'FLAnimatedImage/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'FLAnimatedImage/Headers/*'
         	static.source_files = 'FLAnimatedImage/Headers/*'
      		static.vendored_libraries =  "FLAnimatedImage/libFLAnimatedImage.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "FLAnimatedImage/FLAnimatedImage/**/*.{h,m}"
         end
                                               
         s.frameworks =  "QuartzCore", "ImageIO", "MobileCoreServices", "CoreGraphics"
end

 Pod::Spec.new do |s|
	   	s.name             = 'LJPhotoBrowser'
		   s.version          = '1.0.1'
		   s.summary          = 'A short description of libLJPhotoBrowser.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'LJPhotoBrowser/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "92e979981d477830d4a26a52359a3e8441f4b316" }
         s.preserve_paths = 'LJPhotoBrowser/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'LJPhotoBrowser/Headers/*'
         	static.source_files = 'LJPhotoBrowser/Headers/*'
      		static.vendored_libraries =  "LJPhotoBrowser/libLJPhotoBrowser.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "LJPhotoBrowser/LJPhotoBrowser/Class/*.{h,m}"
         end
                                               
         s.resources =  "LJPhotoBrowser/LJPhotoBrowser/Resource/LJPhotoBrowser.bundle"
         s.frameworks =  "Accelerate"
         s.dependency "Masonry"
         s.dependency "SDWebImage"
end

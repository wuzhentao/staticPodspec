 Pod::Spec.new do |s|
	   	s.name             = 'LJImagePickerController'
		   s.version          = '1.0.0'
		   s.summary          = 'A short description of libLJImagePickerController.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'LJImagePickerController/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'LJImagePickerController/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'LJImagePickerController/Headers/*'
         	static.source_files = 'LJImagePickerController/Headers/*'
      		static.vendored_libraries =  "LJImagePickerController/libLJImagePickerController.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "LJImagePickerController/LJImagePickerController/Class/*.{h,m}"
         end
                                               
         s.resources =  "LJImagePickerController/LJImagePickerController/Resource/LJImagePickerController.bundle"
         s.frameworks =  "Photos", "AVFoundation", "MediaPlayer", "AssetsLibrary"
         s.dependency "Masonry"
         s.dependency "LJPhotoBrowser"
         s.dependency "SDWebImage"
         s.dependency "LJProgressHUDHelper"
end

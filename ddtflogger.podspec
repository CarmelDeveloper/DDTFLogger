Pod::Spec.new do |spec|
  spec.name         = ‘ddtflogger’
  spec.version      = ‘1.0’
  spec.license      = ‘MIT’
  spec.summary      = ‘Lumberjack logger for Test Flight.’
  spec.homepage     = ‘https://github.com/CarmelDeveloper/DDTFLogger’
  spec.author       = ‘Carmel Software’
  spec.source       =  {
    :git => ‘https://github.com/CarmelDeveloper/DDTFLogger.git', 
    :tag => '1.0'
  }
  spec.requires_arc = true

  spec.source_files = '*.{h,m}'
end
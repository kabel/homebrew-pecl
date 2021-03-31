require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.0.tgz"
  sha256 "09a5b5628ff5085fd79fb7bbecce0ad1f29d79c5708b78fbf5311b74ccb8d242"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6743358ba3c2437044e0bca44b5e452cfd93f3d66ce9c81a36f5689a9976b9ef" => :catalina
    sha256 "3f87a41e6ce814fb5f7f9fa0f723b53c2a418da6c60da656d854cd60e1f95696" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.3.tgz"
  sha256 "4b597525e29cb3c38ca9fdab0cd09ad754ba364a067e97252b40e0b943ab85ee"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6743358ba3c2437044e0bca44b5e452cfd93f3d66ce9c81a36f5689a9976b9ef" => :catalina
    sha256 "3f87a41e6ce814fb5f7f9fa0f723b53c2a418da6c60da656d854cd60e1f95696" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

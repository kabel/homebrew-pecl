require_relative "../lib/php_pecl_formula"

class PhpAT72Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.2.tgz"
  sha256 "13bd1c3f6b0d834ebaa4eef924039f90c8dc1a24e2d92e851de12035d3662a43"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1f30fdd24f072f38554578c1eb0502feb7ec27d1bb05db8a0716a0702e970c69" => :catalina
    sha256 "2f321b1ce99b865b76927986f3d1941b3b452fc7776a12116483a9d820054998" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

require_relative "../lib/php_pecl_formula"

class PhpAT72Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.1.tgz"
  sha256 "53bebeb3c177cd975549efc953160f98687f30be60993305248c70ce7b15158b"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "79cd95a201cace923c963470e2d7ce5fe1e8f46e40899aa9a8bc661853b3153d" => :catalina
    sha256 "1b4a1058102de3129c98c549bb94cc80ead5f80edc6899abc292eb0024dae065" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

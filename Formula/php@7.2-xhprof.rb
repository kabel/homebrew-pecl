require_relative "../lib/php_pecl_formula"

class PhpAT72Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.2.0.tgz"
  sha256 "034b3141411f3aaf44f91a0ec86a5f4c805a9372c4ef4f9c5ba38ef0b56f4fa2"
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

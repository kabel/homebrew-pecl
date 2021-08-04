require_relative "../lib/php_pecl_formula"

class PhpAT74Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.4.tgz"
  sha256 "a4b47d278c9424e226ed9ce0b63b9ab6cba5a16a732063ccaffeaf85730353a2"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "eabfcd337af4e24bf3f29a02adb5e715cc2d5c0b938fffa61e73ccf70f4a7b7c"
    sha256 cellar: :any_skip_relocation, catalina: "9d4fd1921460003d78a7361974e160f0e7a4b2c4ab2434b2768b722bbe9b18df"
    sha256 cellar: :any_skip_relocation, mojave:   "905c1cf238652d0ee3f1bbe3a90318ac818b331aba7559134ec951a40e3dfbcd"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

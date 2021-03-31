require_relative "../lib/php_pecl_formula"

class PhpAT73Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.0.tgz"
  sha256 "09a5b5628ff5085fd79fb7bbecce0ad1f29d79c5708b78fbf5311b74ccb8d242"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "dd4f1fa7564c7259b95a14cf9f14c3dbd4203139eb1e325142efab90d5703711"
    sha256 cellar: :any_skip_relocation, catalina: "3836d11416b957456281dced60980f75657916cde605294844a796af66651c22"
    sha256 cellar: :any_skip_relocation, mojave:   "7e67fb7ab286508da69c057a0283e8930dd796d9023dde5d85deb375d1926282"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

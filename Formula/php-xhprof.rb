require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.1.tgz"
  sha256 "ec039d90a5d5df9400c47552e4e4f2c230663b179e063db9f4f6654b05b346b5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "d028762fd679b2e541dfbe4663e31f66b01a89bf78e8584c8fd748d477895b66"
    sha256 cellar: :any_skip_relocation, catalina: "40ceb5a61157be94d61b4752cefbffa784aebdd7560de81aaaf2e46524b13fec"
    sha256 cellar: :any_skip_relocation, mojave:   "367c95056f335275960c2f63494b1a1ff4640c6fc2f7ef213087341115c3a23d"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

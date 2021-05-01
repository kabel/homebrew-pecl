require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.1.tgz"
  sha256 "ec039d90a5d5df9400c47552e4e4f2c230663b179e063db9f4f6654b05b346b5"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "6e3f02c658326ffd72854202b00f6d38901198e85963b704e0e1dc5fc229f4ae"
    sha256 cellar: :any_skip_relocation, catalina: "b7f1139f7781d9b36ab98a4a7e6b19e3235b0356642bcbe53bb3ece68a581e36"
    sha256 cellar: :any_skip_relocation, mojave:   "7b0d229249580bf8759b4926292606908626de9256054fb536add0770692d218"
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

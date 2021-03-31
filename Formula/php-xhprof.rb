require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.0.tgz"
  sha256 "09a5b5628ff5085fd79fb7bbecce0ad1f29d79c5708b78fbf5311b74ccb8d242"
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

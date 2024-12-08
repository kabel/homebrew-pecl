require_relative "../lib/php_pecl_formula"

class PhpAT81Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.10.tgz"
  sha256 "251aee99c2726ebc6126e1ff0bb2db6e2d5fd22056aa335e84db9f1055d59d95"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "c0245927902afa5400dfc126b9dd66968db3ec53ddf4acc93d655e645dd42fda"
    sha256 cellar: :any_skip_relocation, ventura:  "fe6a8d7c696974efcf23646087924af0ec943526967e1b34c81bb13ecba24120"
    sha256 cellar: :any_skip_relocation, monterey: "cb1183a40519ecd767671be019d4a114d972eb8c22afef38c4663af983488cf7"
    sha256 cellar: :any_skip_relocation, big_sur:  "ee3a5a9f3e88788441e173afc54cb08a397a3e1ece89416ec410fc2ce1c0d580"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  source_dir "#{extension}-#{version}/extension"
end

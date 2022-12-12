require_relative "../lib/php_pecl_formula"

class PhpAT81Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.8.tgz"
  sha256 "c88126717e895e9cbd15d49b8382238b69aee668adf8ae88cb9886fb083fa9f5"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "6b9827ec97f86d8fe3fd2d51ebcb23faf547433a987413946e8b4476a5ed3dcf"
    sha256 cellar: :any_skip_relocation, monterey: "833cd63294e824e7aab1a271271017f03ea975c2d4ddd58309bf42e45973119e"
    sha256 cellar: :any_skip_relocation, big_sur:  "7aaa30814384e99519fe3bad8b2255c7afb550fa524bd3cbb717c51d6ff10bdd"
  end

  source_dir "#{extension}-#{version}/extension"
end

require_relative "../lib/php_pecl_formula"

class PhpAT82Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.10.tgz"
  sha256 "251aee99c2726ebc6126e1ff0bb2db6e2d5fd22056aa335e84db9f1055d59d95"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "9c81483bd51d2d3a481ebbb935b5ec201857663b1f6a1ac7499c92599363612a"
    sha256 cellar: :any_skip_relocation, ventura:  "f7877a112e16cb16ce47a67a272ccd51ba6a962e7f44200d7d86db70fee71822"
    sha256 cellar: :any_skip_relocation, monterey: "75fedae55e899be7af69035107abd8e10d0561e5e2b35854577a3e28010d3de7"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  source_dir "#{extension}-#{version}/extension"
end

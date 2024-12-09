require_relative "../lib/php_pecl_formula"

class PhpAT81Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.10.tgz"
  sha256 "251aee99c2726ebc6126e1ff0bb2db6e2d5fd22056aa335e84db9f1055d59d95"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "d53f5ddd5e92ca9497ad487cf56a3d950c2efc0e334ce4a49d5655c63ba7c62a"
    sha256 cellar: :any_skip_relocation, ventura: "ad514157b71986a84c0571a4d3976c3ba22e93d7b8d6ee1b2d347deed0547237"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  source_dir "#{extension}-#{version}/extension"
end

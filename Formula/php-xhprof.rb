require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.10.tgz"
  sha256 "251aee99c2726ebc6126e1ff0bb2db6e2d5fd22056aa335e84db9f1055d59d95"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "74a7630f7b223f4819943a2fb5bf450a8d0c9d587775dc5a599acee4eb0c526e"
    sha256 cellar: :any_skip_relocation, ventura: "32b248d5de0981a350957d0df58e7bc29e6665bf188761ce9228f57b69a8c5f8"
  end

  source_dir "#{extension}-#{version}/extension"
end

require_relative "../lib/php_pecl_formula"

class PhpAT82Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.10.tgz"
  sha256 "251aee99c2726ebc6126e1ff0bb2db6e2d5fd22056aa335e84db9f1055d59d95"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "23a6d37d7ed10cf20e4c35f7d187fdb8570d4c112843d4a620fd16ea9f111a0b"
    sha256 cellar: :any_skip_relocation, ventura: "2baa0118ab30392b1a36dab8a11d7b4c040253fc0d4589f5fbbb9db20b83e73c"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  source_dir "#{extension}-#{version}/extension"
end

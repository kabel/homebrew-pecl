require_relative "../lib/php_pecl_formula"

class PhpAT83Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.10.tgz"
  sha256 "251aee99c2726ebc6126e1ff0bb2db6e2d5fd22056aa335e84db9f1055d59d95"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "f01eab983991159235fa90e3315929f88957ae0366be1af7e901ff485950fd94"
    sha256 cellar: :any_skip_relocation, ventura: "691511ec1e17977f0ada10c26b44fc13f12b5c8755bb9854a8dc1f00caa6414f"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  source_dir "#{extension}-#{version}/extension"
end

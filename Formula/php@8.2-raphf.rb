require_relative "../lib/php_pecl_formula"

class PhpAT82Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.2.tgz"
  sha256 "7e782fbe7b7de2b5f1c43f49d9eb8c427649b547573564c78baaf2b8f8160ef4"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "8d2be136609e22307a0cfef1bddacc1acf17ce67974a2988c20e4f5a50b3e2ba"
    sha256 cellar: :any_skip_relocation, ventura:  "47e15382c14c0f1d3fb22eb8446d0d39ad888c12ba834b19e3e5b55e66bf9ed2"
    sha256 cellar: :any_skip_relocation, monterey: "10752c2178ffbb4754e1e6eabe6ef92d407146499ff87a17d4a38149bb29936c"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conf_order "05"
end

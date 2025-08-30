require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.2.tgz"
  sha256 "7e782fbe7b7de2b5f1c43f49d9eb8c427649b547573564c78baaf2b8f8160ef4"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "69e83d184d95a7fd0c697908b261612db98144bec35d6e6a5574cdff26b8a2cd"
    sha256 cellar: :any_skip_relocation, ventura: "1aadf9c13a614b54b23cee70c87854dd603bfc9c510c1490d3a91ebb978dd68f"
  end

  conf_order "05"
end

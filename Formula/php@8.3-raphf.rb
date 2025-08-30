require_relative "../lib/php_pecl_formula"

class PhpAT83Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.2.tgz"
  sha256 "7e782fbe7b7de2b5f1c43f49d9eb8c427649b547573564c78baaf2b8f8160ef4"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "dcba5df943501360c0ef197abd3109cd1801753065097c9f8a9fb28c93c36e92"
    sha256 cellar: :any_skip_relocation, ventura: "542140225078b5cae70e418fd1e9fdaff26f59ca7db8072f3caa649f7f4a9a62"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  conf_order "05"
end

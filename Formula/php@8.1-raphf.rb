require_relative "../lib/php_pecl_formula"

class PhpAT81Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.2.tgz"
  sha256 "7e782fbe7b7de2b5f1c43f49d9eb8c427649b547573564c78baaf2b8f8160ef4"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "27b33689e4c235f2a1a4b8575b7ac7f12d45b5ddd4a876f40cb95f34e2eca598"
    sha256 cellar: :any_skip_relocation, ventura: "48ec2edbb3e8fb85e61a6a443737539d9534d630e1cfbcaf9aa292424db81419"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  conf_order "05"
end

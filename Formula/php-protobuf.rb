require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.29.1.tgz"
  sha256 "12cc3b38d055feb2eb4c6b4ca6e2c1e080906d06e9173eea2cc160ecd9d6374b"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "38d9f3d78d5ccb4c8bd61f3edcac7a8a41855cc55450fbd9d90d837269b653c9"
    sha256 cellar: :any_skip_relocation, ventura: "46e6e4cb476a09c8335cc261431970e451dab92fed85615d9d6e732e2bbf5ca3"
  end
end

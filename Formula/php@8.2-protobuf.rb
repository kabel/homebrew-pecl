require_relative "../lib/php_pecl_formula"

class PhpAT82Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.29.1.tgz"
  sha256 "12cc3b38d055feb2eb4c6b4ca6e2c1e080906d06e9173eea2cc160ecd9d6374b"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "f3f8254d054131aa17d0913ea9e96cb5899fe70323975e3427da2a4e2183c513"
    sha256 cellar: :any_skip_relocation, ventura: "6a2e8c33665c6076cadc4c9ca7717b91c6125b35c56152d03c8c84c65391a7f0"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end

require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.2.tgz"
  sha256 "e553e85ee153f9a4409ad972b7d217254d4cedd87b54c3fa9f3022aa89bc9644"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "21914d397bdcac2777ae2fa4e318acf19bc3e0861e8b4ae156e092611fe57ab4"
    sha256 cellar: :any_skip_relocation, catalina: "e34ea4dca607c63560cd885ecb8e736bd5774e1417bc2c36b332d9c1abddeeec"
    sha256 cellar: :any_skip_relocation, mojave:   "c834388fe1964016abf957b06db6cee596a60f8481acc42a62fb7812701265af"
  end
end

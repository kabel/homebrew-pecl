require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.23.0.tgz"
  sha256 "f840e5a7859f5dcff5e23636a9ef3d984b75ba5757f958378ac2f168472367b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "e92fdfd9ae39c767cac4e940d8207e1308f61d3b0a3ad9df0246cfe6b5fb3565"
    sha256 cellar: :any_skip_relocation, monterey: "c44aada87fe8cbdbf45fa48625f3ad7beff15d9b19ca1d5e45a949c347fb60f2"
    sha256 cellar: :any_skip_relocation, big_sur:  "39e8ef2a2d5ffbac64b6ca3e11be1ad8a55479345e1f3c8f072cfc57fb5f390b"
  end
end

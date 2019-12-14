require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.2.tgz"
  sha256 "1f269a4e04777c978e9d4893d5a0c9edd1bcbd3ceb039224e61e95e9dbf40d2e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "da71a5f72660a927a0244604013b72743bc924a8e7a1d8f8cc619431977ce3d9" => :mojave
    sha256 "9bed7b2142f643c07651759918258c048a52fa85955fa666e9512f205ce52951" => :high_sierra
  end
end

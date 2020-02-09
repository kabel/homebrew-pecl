require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.3.tgz"
  sha256 "363d302991ce2ef7b63f2e1e24ae75fd7e245d24ce567ac65e44d12bc1c224b5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "da71a5f72660a927a0244604013b72743bc924a8e7a1d8f8cc619431977ce3d9" => :mojave
    sha256 "9bed7b2142f643c07651759918258c048a52fa85955fa666e9512f205ce52951" => :high_sierra
  end
end

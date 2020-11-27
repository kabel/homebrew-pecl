require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.14.0.tgz"
  sha256 "6d4576f2ec472f6b1b5048b833e679164816df3580118a9e63c160888426acd1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "0d6968c6f91102af67a7795ac38ec9d78bacd6b7771d8177078383369c79cb8d" => :catalina
    sha256 "7b87f54c1a5a0369f8018441c4092acd87a0ed3f6cb324791b1d78e11fdaf414" => :mojave
  end
end

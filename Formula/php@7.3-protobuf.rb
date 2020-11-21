require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.14.0.tgz"
  sha256 "6d4576f2ec472f6b1b5048b833e679164816df3580118a9e63c160888426acd1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b4e11a17fa8c218f86f9359f5ea96a49bcb680072af4ef5bc3d3d6d111f04c07" => :catalina
    sha256 "443bb650cf0f1b320494f9063b2c5e56f126bc10e227abfcd44c01c8448e5228" => :mojave
  end
end

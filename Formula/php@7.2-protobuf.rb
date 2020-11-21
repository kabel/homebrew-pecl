require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.14.0.tgz"
  sha256 "6d4576f2ec472f6b1b5048b833e679164816df3580118a9e63c160888426acd1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a574e57c55815b51fad7773e4e0fab2bbe3813183007bb2975a0d117a8fb38e5" => :catalina
    sha256 "a39453cd70268f891a4c1593c9be51f636a2e7c4d494605425267808eaa3d62c" => :mojave
  end
end

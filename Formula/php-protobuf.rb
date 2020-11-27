require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.14.0.tgz"
  sha256 "6d4576f2ec472f6b1b5048b833e679164816df3580118a9e63c160888426acd1"
  license "BSD-3-Clause"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a4990784888e3cbdf79e85fc4d28e0b3d89011c7c2a1dc9f93a297a7165f8467" => :catalina
    sha256 "712e6140ae75b74b7640b5295168a425f6c94421d8098b9ff1468190f0dad452" => :mojave
  end
end

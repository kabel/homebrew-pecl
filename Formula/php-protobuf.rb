require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.1.tgz"
  sha256 "9003cd3e7bdb0ab9862133371e3a6c9fad9301257c78d0a2cc537cfb5f88e9b6"
  revision 1
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "2b9febfc58056c5e9ab0b62f12b2eae5bd83ce8272a72a3160bec54a1d779a0a"
    sha256 cellar: :any_skip_relocation, catalina: "8cbd4bf095c4262eff6a556f03c3580d00d58890fa3e73de0f165f5647625b38"
  end
end

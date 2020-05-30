require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.2.tgz"
  sha256 "1f4c4927007bebee3622ee0f05a71e7087e0c0f638ec9f3839ba2454fb4d11cb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "eb7bf377082cfc5634adf7a61705a4142e88d94b12c60561c391ee2a09236459" => :catalina
    sha256 "2fa92bc45314f62168a91c4d56af190897a0c3d8a3a66da716a8f2de2e56c913" => :mojave
  end
end

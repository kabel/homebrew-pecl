require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.2.tgz"
  sha256 "1f4c4927007bebee3622ee0f05a71e7087e0c0f638ec9f3839ba2454fb4d11cb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "95362c365f1a66a144dabc63238a21e2667100a66bf607e122fcdf2576447339" => :catalina
    sha256 "49e15c6ac9df24717567c9edba19501c90e3de1a6a58e5e0552f3b5a54a09581" => :mojave
  end
end

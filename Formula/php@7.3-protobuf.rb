require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.2.tgz"
  sha256 "1f4c4927007bebee3622ee0f05a71e7087e0c0f638ec9f3839ba2454fb4d11cb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "cee33582d693da2df9d9084f15f162a33d2c9551725480de723d7abe8a83210e" => :catalina
    sha256 "eb131a56734751db32c491ef2510e827082a4806c66e01e4ca7e43a9a788f7ea" => :mojave
  end
end

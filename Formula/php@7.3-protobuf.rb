require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.3.tgz"
  sha256 "056b815dea3067abf8fe3d7779b2357039129dd847f66b49b80c9ab05d7557a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "cee33582d693da2df9d9084f15f162a33d2c9551725480de723d7abe8a83210e" => :catalina
    sha256 "eb131a56734751db32c491ef2510e827082a4806c66e01e4ca7e43a9a788f7ea" => :mojave
  end
end

require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.3.tgz"
  sha256 "056b815dea3067abf8fe3d7779b2357039129dd847f66b49b80c9ab05d7557a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a745a4a2fdf7e85f14450e9190d825f1ed28f102cf4fbfca679f09d56b96294c" => :catalina
    sha256 "008a42a929d009b7fb0373a706d99f7329ae22084552805d8c3be41c426e62fa" => :mojave
  end
end

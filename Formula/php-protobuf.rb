require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.4.tgz"
  sha256 "b8826b730355fd0d30bdc9b698f7297a9db13f8d217361882b3db150bdf43681"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a745a4a2fdf7e85f14450e9190d825f1ed28f102cf4fbfca679f09d56b96294c" => :catalina
    sha256 "008a42a929d009b7fb0373a706d99f7329ae22084552805d8c3be41c426e62fa" => :mojave
  end
end

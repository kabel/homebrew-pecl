require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.4.tgz"
  sha256 "b8826b730355fd0d30bdc9b698f7297a9db13f8d217361882b3db150bdf43681"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b48ef338f12b7c157c4890131f72b9398687e2ba03f30910aa9f872868f66006" => :catalina
    sha256 "146bfe5ab45694d8e6242aed893f4ac9527e0e7c07679ff66b953d0c3ad03fd4" => :mojave
  end
end

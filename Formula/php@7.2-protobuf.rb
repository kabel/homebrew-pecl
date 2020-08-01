require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.4.tgz"
  sha256 "b8826b730355fd0d30bdc9b698f7297a9db13f8d217361882b3db150bdf43681"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5d2fc80efb249208afe9ac82e3e58ff12ca8360e52f5c2c3d32d3093b00575c6" => :catalina
    sha256 "3e7a1a8b0a27468ccf86963392ec6842d27e9d60f6a0858ba6371152f2318114" => :mojave
  end
end

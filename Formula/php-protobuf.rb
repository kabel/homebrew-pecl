require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.4.tgz"
  sha256 "b8826b730355fd0d30bdc9b698f7297a9db13f8d217361882b3db150bdf43681"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "045c19b7c532f283177fa701bf438fd7c631ef92c71274fb7d4961b924311f13" => :catalina
    sha256 "40e013e06fa76058f3664ce3d869065f9cb4c71f017ad5112047e3bdc9b97160" => :mojave
  end
end

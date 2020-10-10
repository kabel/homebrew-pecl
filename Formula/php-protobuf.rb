require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.13.0.1.tgz"
  sha256 "0e7f0830f95d856fad8eb1e770ea7c81386f4d676615c5d97f7d3ca474e4fd6f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "045c19b7c532f283177fa701bf438fd7c631ef92c71274fb7d4961b924311f13" => :catalina
    sha256 "40e013e06fa76058f3664ce3d869065f9cb4c71f017ad5112047e3bdc9b97160" => :mojave
  end
end

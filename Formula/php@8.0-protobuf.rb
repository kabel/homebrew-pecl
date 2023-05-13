require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.23.0.tgz"
  sha256 "f840e5a7859f5dcff5e23636a9ef3d984b75ba5757f958378ac2f168472367b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "ac334b5888bb9ad1a43e3f6bdc3cfb1d019075c213e2c2b88a8442276fcd4bf4"
    sha256 cellar: :any_skip_relocation, monterey: "3d39a2ad5f1294dad717372928732d9ac9f15cf6301e48e5791de16179492918"
    sha256 cellar: :any_skip_relocation, big_sur:  "571d6a7ee3195061418f7d72342fb68d52cba40df84a88f31a2a85f4808758c1"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end

require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.16.0.tgz"
  sha256 "b26ff5c3a16c03fb7c5fd12a67473da46a7cf5145ed8e40f6ab86b3ff39e689c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "9c8e00967d4483cd43f51bae56f2abf642c650f377600059493dcb9e98222707"
    sha256 cellar: :any_skip_relocation, catalina: "bd7af8c8f449537852ee4b1f9526cb1fd60004388d952cc862b8c0e6f7aba317"
    sha256 cellar: :any_skip_relocation, mojave:   "97ab7493863fe1003f5d9ca5bf2017e81f66d97d59b2a0716576790a6be33fb6"
  end
end

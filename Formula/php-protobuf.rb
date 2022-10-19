require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.8.tgz"
  sha256 "610f06f2c51703129107ff1675ac3d73b26f24108621fd680f93c1fca84e53c8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "77765278bb4bff28d97f920aa62a52a8cf1bacfdab2b7c03909e26f3f2a93258"
    sha256 cellar: :any_skip_relocation, big_sur:  "9fa4882233ef886e4ff67c98528e6faec05d63bcf0ab9f4a4b40bdb11c5337f1"
    sha256 cellar: :any_skip_relocation, catalina: "2eb4f16bb0c8afaa0b8bf2a5aad8c7d798cea8fb622883131c7904dda15d6cce"
  end
end

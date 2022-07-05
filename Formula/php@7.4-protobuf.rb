require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.2.tgz"
  sha256 "0ac8b83a30cb2ad24017c794dc1c9433607148303a496cb9660131ae4855acf8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "5b9bacdc4a4e4a9d372b8e4fad0146fbef17d3d43b2d3075443f7c56bb50eaad"
    sha256 cellar: :any_skip_relocation, big_sur:  "87a524fe404b34206691976cb9e58154a343868d943304144063e76887b3b53a"
    sha256 cellar: :any_skip_relocation, catalina: "f4ccceef0af9f6cdd4aabf88fe73830be9399b2365f866634b8944a03e63ded2"
  end
end

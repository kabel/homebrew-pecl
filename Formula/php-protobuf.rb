require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.1.tgz"
  sha256 "9003cd3e7bdb0ab9862133371e3a6c9fad9301257c78d0a2cc537cfb5f88e9b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "435f1d996dfdd7433d46cc516f142053ae522796b2b85b1705be9ee0bfe2e702"
    sha256 cellar: :any_skip_relocation, catalina: "db33246341b22bc64f594a03d776193cf4b369c0ecf511dbe93c337c513d4689"
  end
end

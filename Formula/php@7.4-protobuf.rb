require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.8.tgz"
  sha256 "610f06f2c51703129107ff1675ac3d73b26f24108621fd680f93c1fca84e53c8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "78232ac9e54eb190556cfc97c3a9cfd92c587a5717f3fa86f7620397ff735cb8"
    sha256 cellar: :any_skip_relocation, big_sur:  "4fcdd0434c535643383d0ad0c409e3dd1fb8ae6b14de7913f75df49b38a854e9"
    sha256 cellar: :any_skip_relocation, catalina: "1c5549f6e13580fcdf0b5aea82a113a867c793d74865d1a5aa1c7d610cfa5b0a"
  end
end

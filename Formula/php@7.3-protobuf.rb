require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.0.tgz"
  sha256 "26c9baaf5da3604aa5f57c0bf1badd90ff91e08a2fd656b2fbc21691aee4ca56"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "956f90762ce69bdbd1adb365fcfbaba469f9a6823b2bc2b93f3daddf46aa9f04"
    sha256 cellar: :any_skip_relocation, catalina: "c18f662042fe240e195b69e4cd5f15db6acfbe4b89f69027c6679ae01f58fa96"
    sha256 cellar: :any_skip_relocation, mojave:   "5a33c95f3010a6ff315e62f913c01d816372323118eb50a9e030be4b8e41fc2d"
  end
end

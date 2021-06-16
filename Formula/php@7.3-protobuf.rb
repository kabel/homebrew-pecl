require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.3.tgz"
  sha256 "b4995573171e61f0e85a1bf4f021b64b7dadbff714019ef2ca7c8723f435d616"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "0238dce579baf86cdb5fb10dee4aec1e0afde088cbc5b688edf7265151afaa5f"
    sha256 cellar: :any_skip_relocation, catalina: "1315dc8a1981df9b6d8a41b54b83f83491d9ea8277cdff32b5ed3f912c8ac514"
    sha256 cellar: :any_skip_relocation, mojave:   "2c375901b3d1482625e96390385759ad994122efc6d80ee49f5b7c2a012cb99a"
  end
end

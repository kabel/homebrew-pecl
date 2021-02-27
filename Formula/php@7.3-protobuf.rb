require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.1.tgz"
  sha256 "256aa1f17f86be673f05a6697ef2d0cc022b863ffb09f8ab9295280b6f94c2e4"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "f729c3b8f4f257cd86fc931b67c5271c2e22bdb5c8406a9c0235936daba0f0e9"
    sha256 cellar: :any_skip_relocation, catalina: "a540d82f05d351c3534f250be008545d7de9fc2e84de6a4e23f075fea656a976"
    sha256 cellar: :any_skip_relocation, mojave:   "07e3a4aed3b54b1beb0dba06e72a897f4394bb0127f205624139d469c9751cc9"
  end
end

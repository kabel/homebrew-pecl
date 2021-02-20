require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.1.tgz"
  sha256 "256aa1f17f86be673f05a6697ef2d0cc022b863ffb09f8ab9295280b6f94c2e4"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "0d21c48934e8c468bf55da4d1ee29e2c970bb7ff7cab5b0256e8708c4d7aa55c"
    sha256 cellar: :any_skip_relocation, catalina: "b4b65b5ed3f67577eb3eab1e3153cf7ccd4122d516fcb1621ef6bc18d8d4ced5"
    sha256 cellar: :any_skip_relocation, mojave:   "5bfb6077e230bcab631b3709f8c7c8d48698321588eb9ae62d769458010d613b"
  end
end

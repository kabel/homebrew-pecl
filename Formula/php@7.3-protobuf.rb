require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.1.tgz"
  sha256 "256aa1f17f86be673f05a6697ef2d0cc022b863ffb09f8ab9295280b6f94c2e4"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "436edb5b13574e41e243d86db89e8358c0b713af1bca0d8d5b87e5a9c70b6bda" => :catalina
    sha256 "293fa5e4d592c0a18ca1c378b415381cf3a8cce5af235ba1ff8d187b52b282e8" => :mojave
  end
end

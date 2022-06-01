require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.1.tgz"
  sha256 "86b02122323e203454835eb371de4dbe4f6e4e57dd084a04203eebf9eb04ff8d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "2c875213d5549a78f7136ebf4d8419f192957083653535aa0602a4402b294842"
    sha256 cellar: :any_skip_relocation, big_sur:  "01db4ad15b764b4eca92dd1267fa0cdd5a7664441b3c533d415637d5a0e64cb7"
    sha256 cellar: :any_skip_relocation, catalina: "787eaf2d9df1da43dcd7f0228bea16b8f1e461befe650428056462c41a5a2a0a"
  end
end

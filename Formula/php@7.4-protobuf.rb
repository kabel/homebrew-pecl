require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.1.tgz"
  sha256 "86b02122323e203454835eb371de4dbe4f6e4e57dd084a04203eebf9eb04ff8d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "416e2bc7e05da4c0f4e48571d401487723dddce7bb6eaf5ac5c00d6494e685db"
    sha256 cellar: :any_skip_relocation, big_sur:  "88b18e77914636b976673526dbd54bc7d32820b4ffbf3c76efa5154101233e9d"
    sha256 cellar: :any_skip_relocation, catalina: "436b0dc3a5df01fcf16011b328dc361568ce2c916e8fe88499d8ca51549c318f"
  end
end

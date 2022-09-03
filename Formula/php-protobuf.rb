require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.5.tgz"
  sha256 "07ccad172509f1f2c1c0799a297c5f3b2d21ead4442e3a9ce48c54525fd8539c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "30137522d4bb7c61f53e7e9e44ce3532040fc34bf37888065d0294782b155629"
    sha256 cellar: :any_skip_relocation, big_sur:  "3dbb9cd32db69fbe2b7b6f7ae5ee6c097ce3b4536cf02e9cc7f9f9bcbfdf04e7"
    sha256 cellar: :any_skip_relocation, catalina: "582bd05418587cf1128b30056bae3421a56dda81b12ec3427939045da2310f86"
  end
end

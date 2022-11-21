require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.2.tgz"
  sha256 "6f7ca35b997cc9d75431765e11f675bddb634aaa9b63b4087181fa99b9f2aaaa"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "5bfa1bdbfc67b9b15ead0b03e2e25555c3556aca1e69fba8fcdaf999c93df41d"
    sha256 cellar: :any, big_sur:  "8339f66b8f2f61f0fafcb64e4112dbb7fac8f923eaedbf6a97b55f0256341a5d"
    sha256 cellar: :any, catalina: "28c55735f5474fe65af846a9de9070b456391a16afaaf17ba67bb56befa3b844"
  end

  depends_on "icu4c"
  depends_on "snappy"
end

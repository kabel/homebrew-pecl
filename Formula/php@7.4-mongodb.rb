require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.2.tgz"
  sha256 "6f7ca35b997cc9d75431765e11f675bddb634aaa9b63b4087181fa99b9f2aaaa"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "ffb2fd703aee076eac2582cfa67f386a9c04b6c720eab3bbf1ed0a3f8cbf1f4b"
    sha256 cellar: :any, monterey: "7db86110a5a397a6e2901a7a90cd57a1fca68ff6598ec715da92128763a486b6"
    sha256 cellar: :any, big_sur:  "c2e857abe6abdf17e9f75423a97323d6fa24d20a8c5b0d8a9890663de1fc963e"
  end

  depends_on "icu4c"
  depends_on "snappy"
end

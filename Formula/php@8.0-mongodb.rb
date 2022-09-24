require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.1.tgz"
  sha256 "bae2a876fdcc13d6cd0139fb5b2aefd51c9d5c84a6a4fc53bebdbe3f162d835e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "3c66bc86b7a8308cf6ae8e3ff205f155a2143773f2ceeea20da50e302f8bc1e7"
    sha256 cellar: :any, big_sur:  "ab9e6b7ff2e68c01c776b450c8538ad8f9483f25aa629c08f85e3901b2531305"
    sha256 cellar: :any, catalina: "31e24ee212e234b4d78092dceb1239b35ac4a9feb63ff40a048c8792ca71c525"
  end

  depends_on "icu4c"
  depends_on "snappy"
end

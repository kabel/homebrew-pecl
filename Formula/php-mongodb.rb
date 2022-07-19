require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.0.tgz"
  sha256 "55775e69207a7f9c43c62883220f3bc600d3e3f663af50000be70ad3ee51818e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "6256cfd8b98f507c86490f9b05bd9e880c82edd2a916acec0a0bb3814cd63a80"
    sha256 cellar: :any, big_sur:  "259ea6d85096e98a6588768ace96f699e4e817aa52f077b6ef830e0c3546ae5f"
    sha256 cellar: :any, catalina: "cc685068c0a4b900f7003513d70cdd9aca064a2e9ca3a2556729b772737a893f"
  end

  depends_on "icu4c"
  depends_on "snappy"
end

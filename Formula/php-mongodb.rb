require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.13.0.tgz"
  sha256 "22865b61d264c90c9eaa85d94f2f5f57e564140cad87c8c2601fa33f80efe0bb"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "259ea6d85096e98a6588768ace96f699e4e817aa52f077b6ef830e0c3546ae5f"
    sha256 cellar: :any, catalina: "cc685068c0a4b900f7003513d70cdd9aca064a2e9ca3a2556729b772737a893f"
  end

  depends_on "icu4c"
  depends_on "snappy"
end

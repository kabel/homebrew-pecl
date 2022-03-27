require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.13.0.tgz"
  sha256 "22865b61d264c90c9eaa85d94f2f5f57e564140cad87c8c2601fa33f80efe0bb"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "b4dd56a9a344419f087a6efeed56503a594da7d02763ce544a7ab72f87d3870f"
    sha256 cellar: :any, catalina: "499af73b02d700d1a1fa2a220b1da54f87ffbe7fba023ab0619162faf26472c4"
  end

  depends_on "icu4c"
  depends_on "snappy"
end

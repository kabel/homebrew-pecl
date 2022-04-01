require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.21.tgz"
  sha256 "1033530448696ee7cadec85050f6df5135fb1330072ef2a74569392acfecfbc1"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "56805c69d87e2458ec7f79b8dbbb249505cfbc79d7f8b0a6dd8f2c3400609fb6"
    sha256 cellar: :any_skip_relocation, big_sur:  "00f91d574ab920bde9ab141606582da585477430faf8fc123edeaaf5ac7c8d3e"
    sha256 cellar: :any_skip_relocation, catalina: "dc75a207596d18b9081e3a894b22fc2fe7d06fb39e3c795281397510849e5a82"
  end
end

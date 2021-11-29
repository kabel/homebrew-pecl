require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.21.tgz"
  sha256 "1033530448696ee7cadec85050f6df5135fb1330072ef2a74569392acfecfbc1"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "74d52a69ddfc37631e5217e4c3e2f55b9f7ce726b020da96f2bd0465db1b0d83"
    sha256 cellar: :any_skip_relocation, catalina: "ace6fc6df236411cfd261d8c741f3f8c73b59f9fb601bb9c6575d755ab22992a"
    sha256 cellar: :any_skip_relocation, mojave:   "e30389b9267211a739ef8fe580566f238d883c5022eddb0aaf052bd076e9dfcb"
  end
end

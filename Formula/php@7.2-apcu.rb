require_relative "../lib/php_pecl_formula"

class PhpAT72Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.17.tgz"
  sha256 "6b11b477890a9c096ad856e0251920d1d8b9558b7d115256c027e0223755c793"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "67340e616aef56dc157fe4e6d4003f0838ec9579a3bad095c1437a05fa1b67e3" => :mojave
    sha256 "58be214f5199360f697db53c74c80d7b61063cf2f694f808926274a0f7587eb8" => :high_sierra
  end

end

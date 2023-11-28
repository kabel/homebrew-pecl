require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  revision 2
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "db7499134e57cb898e12bae8592956e3353c50ed8df1d475c176416d53ce621e"
    sha256 cellar: :any, ventura:  "f1e727cf378af345a6da1e40fb434de08a1a91ba4018ce92d3d0f0856f527006"
    sha256 cellar: :any, monterey: "c09651e99b9bcebb1aae9ba97714de89f589e511c26e5393534714e1bc419e45"
  end

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end

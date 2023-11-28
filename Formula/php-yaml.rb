require_relative "../lib/php_pecl_formula"

class PhpYaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  revision 2
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "1d65582b464f58c490a8edbd9a9e7a93d3eac86b300a9ff7ae678dfb0ee5706e"
    sha256 cellar: :any, ventura:  "d1f6d32467b789e74f50c9241e4fee2802a65fe8ed39dc07db1a8f145a0027f3"
    sha256 cellar: :any, monterey: "a138139d52735ad8d631c27097c59e2748ef3a5edf6c39c7d03d1afc55e4a74c"
  end

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end

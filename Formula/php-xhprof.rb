require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.9.tgz"
  sha256 "1dd421b25e0351e8074dec0b41ee67c5ca3a9f181ee90629e0222a12cd6f8774"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "979ad09f8cbc043fb9ade0b3b4dbe897ac912644707e5905f16afa43b56e972a"
    sha256 cellar: :any_skip_relocation, monterey: "c8eaf57c339347401b566e31caa541ad947f39bc00eb9ded5a57e3cd3eb9a9ac"
    sha256 cellar: :any_skip_relocation, big_sur:  "5642f146bd894df8406536231ac1ec5d87352a934b3b36cb050afeb00475704c"
  end

  source_dir "#{extension}-#{version}/extension"
end

require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.9.tgz"
  sha256 "1dd421b25e0351e8074dec0b41ee67c5ca3a9f181ee90629e0222a12cd6f8774"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "6ce7788b57eafd98abdc3c022d4cca7106b98405a6d6d1d9ddfbc8f07e20981d"
    sha256 cellar: :any_skip_relocation, ventura:  "45c23cf919c4c33c37ba5e8c7ab23743c4cdf5f1fcbe4dbf519e8314bf49236a"
    sha256 cellar: :any_skip_relocation, monterey: "d6b3c338be0f3850d40419dbcf4f165ebbf69d90778ce493dad1b9379e368f70"
  end

  source_dir "#{extension}-#{version}/extension"
end

require_relative "../lib/php_pecl_formula"

class PhpAT80Xhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.9.tgz"
  sha256 "1dd421b25e0351e8074dec0b41ee67c5ca3a9f181ee90629e0222a12cd6f8774"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "8d2705ad4cfc9c6dd03fc3841ea4e04482efe9dff12cdaf48d30d65980bbe14e"
    sha256 cellar: :any_skip_relocation, monterey: "91fa16c11df95ddbcc76846e559d9903fc747bd71528169f086539d0abf79a3c"
    sha256 cellar: :any_skip_relocation, big_sur:  "a9b31241cab7fdba5e1e74261114ecf09cf4a715af2acf7c8b22dbaae9d85e09"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  source_dir "#{extension}-#{version}/extension"
end

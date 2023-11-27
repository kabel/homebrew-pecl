require_relative "../lib/php_pecl_formula"

class PhpAT81Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.59.1.tgz"
  sha256 "d789aab7c791647907c3bc3af2bd6b6e97348d1b50eaa59826be61c4a3c3d3ee"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "c1c92b36f9ea058082dc5c23f354e55df5be1f208834baf7ad176ffd4fd2fd67"
    sha256 cellar: :any_skip_relocation, monterey: "392e4deeece352500733e3ba00c7bbddd3c8526a36bb6ef81ff695338b1cfd5a"
    sha256 cellar: :any_skip_relocation, big_sur:  "0f52ef8c6fba857235b8745eb6164bc0555e5264147dc808bfccd9f1969b3323"
  end

  deprecate! date: "2024-11-25", because: :unsupported
end

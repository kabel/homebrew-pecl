require_relative "../lib/php_pecl_formula"

class PhpAT82Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.18.1.tgz"
  sha256 "f957b71154052fa9706ce703f4f8043cfe2655367455483798b59269ebe9f135"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "af1c5a03910624d251829f81c75352ffa0a3ee04de8707c45ca2a59f9955f6db"
    sha256 cellar: :any, ventura:  "7d4579c7ebe31efa2da019fa01a7148b8e7fa70c1aefe7ec1611c0ed955dfbb6"
    sha256 cellar: :any, monterey: "a73a299197dd2f742627585e2aeb4e411ff1db7b9b35b5510e2bf192394ae803"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end

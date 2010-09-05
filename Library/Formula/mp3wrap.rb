require 'formula'

class Mp3wrap <Formula
  url 'http://prdownloads.sourceforge.net/mp3wrap/mp3wrap-0.5-src.tar.gz?download'
  homepage 'http://mp3wrap.sourceforge.net/'
  md5 '096b46295cbe3ee2f02ca7792517dc36'
  version '0.5'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--mandir=#{man}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end

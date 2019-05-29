class Larasynth < Formula
  desc "Larasynth can learn to turn the knobs of your synthesizer for you."
  homepage "https://github.com/sommern/larasynth"
  url "https://github.com/sommern/larasynth/releases/download/v0.2.4/larasynth-source-0.2.4.tar.gz"
  sha256 "81658a9509ac540b1e802e409afd143b31c6f3e312cdedb42b75f9c05c010625"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "lara"
  end
end

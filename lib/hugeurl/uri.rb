class URI::HTTP
  def to_huge
    Hugeurl.get(self)
  end
end

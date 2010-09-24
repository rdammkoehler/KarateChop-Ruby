class TRKarateChop
  
  def chop(targetValue,sortedList)
    if sortedList.nil? || sortedList.empty?
       rval = -1
    else
      rval = bsearch targetValue, sortedList
    end
    rval
  end
  
  def mid(list)
    list.size / 2
  end
  
  def bsearch(targetValue, sortedList)
    rval = -1
    indexList = (0..sortedList.size-1).to_a
    while !indexList.nil? && !indexList.empty? && rval == -1
      mid = mid indexList
      index = indexList[mid]
      if targetValue == sortedList[index]
        rval = index
      elsif targetValue < sortedList[index]
        indexList = indexList[0,mid]
      else
        indexList = indexList[mid,indexList.size-1]
      end
    end
    rval
  end
  
end
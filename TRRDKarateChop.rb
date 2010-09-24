class TRRDKarateChop

  def chop(targetValue,sortedList)
    if sortedList.nil? || sortedList.empty?
       rval = -1
    else
      rval = bsearch targetValue, sortedList
    end
    rval
  end
  
  def mid(sortedList)
    sortedList.size / 2
  end
  
  def bsearch(targetValue,sortedList)
    rval = -1
    accum = 0
    while !sortedList.nil? && !sortedList.empty? && rval == -1
      mid = mid sortedList
      if targetValue == sortedList[mid]
        rval = accum += mid
      elsif targetValue < sortedList[mid]
        sortedList = sortedList[0,mid]
      else
        accum += mid
        sortedList = sortedList[mid,sortedList.size-1]
      end
    end
    if sortedList[accum] == targetValue
      rval = accum
    end
    rval
  end

end
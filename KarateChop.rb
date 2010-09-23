class KarateChop

  def chop(targetValue,sortedList)
    rval = -1
    if sortedList.size == 0
      rval = -1
    elsif sortedList.size == 1 
      if sortedList[0] == targetValue
        rval = 0
      end
    else
      rval = bsearch(targetValue,sortedList,mid(sortedList))
    end
    rval
  end
  
  def mid(sortedList)
    sortedList.size / 2
  end
  
  def bsearch(targetValue,sortedList,mid)
    print mid, "[", targetValue, "[", sortedList, "]]\n"
    if mid == nil
      rval = -1
    elsif targetValue == sortedList[mid]
      rval = mid
    elsif targetValue < sortedList[mid]
      rval = bsearch(targetValue,sortedList[0,mid],mid(sortedList[0,mid]))
    else
      subList = sortedList[mid,sortedList.size-1]
      rval = 1 + bsearch(targetValue,subList,mid(subList))
    end
    rval
  end

end

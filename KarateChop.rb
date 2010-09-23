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
      rval = bsearch(targetValue,sortedList)
    end
    rval
  end
  
  def mid(sortedList)
    sortedList.size / 2
  end
  
  def bsearch(targetValue,sortedList)
    rval = -1
    mid = mid(sortedList)
    print "bsearch ", mid, "[", targetValue, "[", sortedList, "]]\n"
    if targetValue == sortedList[mid]
      rval = mid
    elsif targetValue < sortedList[mid]
      lowerList = sortedList[0,mid]
      rval = bsearch(targetValue,lowerList)
    elsif targetValue > sortedList[mid]
      upperList = sortedList[mid,sortedList.size-1]
      rval = mid + bsearch(targetValue,upperList)
    else 
      rval = -1
    end
    rval
  end

end

class KarateChop

  def chop(targetValue,sortedList)
    if sortedList.nil? || sortedList.size == 0
       rval = -1
    else
      rval = bsearch(targetValue,sortedList)
    end
    rval
  end
  
  def mid(sortedList)
    sortedList.size / 2
  end
  
  def bsearch(targetValue,sortedList)
    mid = mid(sortedList)
    if sortedList.nil? || sortedList.size == 0
      rval = -1
    elsif targetValue == sortedList[mid]
      rval = mid
    elsif targetValue < sortedList[mid]
      rval = bsearch(targetValue,sortedList[0,mid])
    elsif targetValue > sortedList[mid]
      ival = bsearch(targetValue,sortedList[mid,sortedList.size-1])
      if ival  > -1
        rval = mid + ival
      else 
        rval = -1
      end
    else 
      rval = -1
    end
    rval
  end

end

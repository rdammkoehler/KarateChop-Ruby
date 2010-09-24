class KarateChop

  def chop(targetValue,sortedList)
    if sortedList.nil? || sortedList.size == 0
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
    mid = mid sortedList
    if !sortedList.nil? && !sortedList.empty?
      if targetValue == sortedList[mid]
        rval = mid
      elsif targetValue < sortedList[mid]
        rval = bsearch targetValue, sortedList[0,mid]
      else
        if -1 < ival = bsearch(targetValue, sortedList[mid,sortedList.size-1])
          rval = mid + ival
        end
      end
    end
    rval
  end

end

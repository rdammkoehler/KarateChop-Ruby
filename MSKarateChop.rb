class MSKarateChop
  
  def chop(targetValue,sortedList)
    if sortedList.nil? || sortedList.empty?
       rval = -1
    else
      rval = bsearch targetValue, sortedList, (0..sortedList.size-1).to_a
    end
    rval
  end
  
  def mid(sortedList)
    sortedList.size / 2
  end
  
  def bsearch(targetValue, sortedList, indexList)
    rval = -1
    mid = mid sortedList
    if !sortedList.nil? && !sortedList.empty?
      if targetValue == sortedList[mid]
        rval = indexList[mid]
      elsif targetValue < sortedList[mid]
        rval = bsearch targetValue, sortedList[0,mid], indexList[0,mid]
      else
        rval = bsearch targetValue, sortedList[mid,sortedList.size-1], indexList[mid,sortedList.size-1]
      end
    end
    rval
  end
  
end
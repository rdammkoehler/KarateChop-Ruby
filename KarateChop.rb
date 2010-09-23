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
    rval = -1
    print mid, "[", targetValue, "[", sortedList, "]]\n"
    if targetValue == sortedList[mid]
      rval = mid
    end
    rval
  end

end

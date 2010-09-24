class MSKarateChop
  
  @sortedList
  
  def chop(targetValue,sortedList)
    @sortedList = sortedList
    if @sortedList.nil? || @sortedList.empty?
       rval = -1
    else
      rval = bsearch targetValue, (0..@sortedList.size-1).to_a
    end
    rval
  end
  
  def mid(list)
    list.size / 2
  end
  
  def bsearch(targetValue, indexList)
    rval = -1
    mid = mid indexList
    if !indexList.nil? && !indexList.empty?
      index = indexList[mid]
      if targetValue == @sortedList[index]
        rval = index
      elsif targetValue < @sortedList[index]
        rval = bsearch targetValue, indexList[0,mid]
      else
        rval = bsearch targetValue, indexList[mid,indexList.size-1]
      end
    end
    rval
  end
  
end
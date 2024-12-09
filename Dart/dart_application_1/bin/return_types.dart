// Return Types...

void main(){ // void = cannot return types
  num resultsData = calculateSquare(numData: 10);
  print("The square results is : $resultsData");

}

calculateSquare({required num numData}){
  num results = numData * numData;
  return results;
}
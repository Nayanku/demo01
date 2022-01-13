public class SampleClass {
    public static Integer methodName(String inputString){
        String revString = inputString.reverse();
        Integer sum = 0;
        System.debug('revString ::::: '+revString);
        List<String> lisStr = revString.Split(',');
       	List<Integer> listIntegers = new List<Integer>();
        
        for(String eachStr : revString.split(',')){
         	System.debug('each Integer ::::: '+Integer.valueOf(eachStr));
            if(eachStr != null){
         		listIntegers.add(Integer.valueOf(eachStr));
            }
        }
        System.debug('AAAA '+listIntegers);
      //  List<Integer> sortedList = listIntegers.sort();
      //  System.debug('sortedList :::::: '+listIntegers.sort());
        for(Integer i : listIntegers){
            sum += i;
        }
        
        return sum;
    }
}
class AsanData {
  String name;
  int prepTime;
  int duration;
  int exitTime;
  int repetition;
  int lOrR;

  setAasandata(String nm,int pr,int du,int ex,int re,int lr)
  {
    this.name = nm;
    this.prepTime = pr;
    this.duration = du;
    this.exitTime = ex;
    this.repetition = re;
    this.lOrR = lr;

  }
  @override
  String toString() {
    // TODO: implement toString
    String myString= name+" "+prepTime.toString()+" "+duration.toString()+" "+exitTime.toString();
    return  myString;
  }

}

AsanData getAasanData(int i) {

  //List<AasanData> myList = new List();

  AsanData posture1 = new AsanData();
  posture1.setAasandata("Shavasan",10,20,10,1,0);
//  myList.add(posture1);
  AsanData posture2 = new AsanData();
  posture2.setAasandata("Vajrasan",10,20,10,1,0);

  AsanData posture3 = new AsanData();
  posture3.setAasandata("Shirshasana",10,20,10,1,0);

  AsanData posture4 = new AsanData();
  posture3.setAasandata("Viparitkarni",10,20,10,1,0);

  AsanData posture5 = new AsanData();
  posture3.setAasandata("Sarvangasana",10,20,10,1,0);

  // myList.add(posture2);
  if(i == 1 ) {
    return posture1;
  }
  if(i == 2 )  {
    return posture2;
  }
  if(i == 3)  {
    return posture3;
  }
  if(i == 4)  {
    return posture4;
  }

  if(i == 5)  {
    return posture5;
  }
  else {
    return posture5;
  }
}
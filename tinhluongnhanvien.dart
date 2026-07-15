void main(){
  Map<String, dynamic> nhanvien={
    'hoten':'Hoàng Dung',
    'sogiolv': 30.0,
    'luonggio': 500000.0
  };
  tinhLuong(nhanvien);
}

 void tinhLuong(Map nhanvien){
  double tongluong=0, gioLv=0, luongGio=0;
  double phucap=0, thue=0, tl=0;
  gioLv= nhanvien['sogiolv'];
  luongGio= nhanvien['luonggio'];
  tongluong=gioLv * luongGio;
  //xét phụ cấp
  if (gioLv>40){
    phucap=(gioLv-40)*luongGio*1.2 ;    
  }
  //thuế tncn
  tongluong+=phucap;
  if (tongluong>10000000){
    thue=tongluong*0.1;
    }
  else if ((tongluong>=7000000) && (tongluong<=10000000)) {
    thue=tongluong*0.05; }
  else{
    thue=0;
  }  
  tl=tongluong-thue;
  //In kết quả
  print('Họ tên\t\t' + 'Lương c.thuế\t' +  'Thuế \t\t' + 'Thực lãnh');
  print(nhanvien['hoten'] + '\t' + tongluong.toString() + '\t' + thue.toString() + '\t'+ tl.toString());  
}

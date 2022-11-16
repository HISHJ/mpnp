package kr.co.mpnp.user.vo;

public class DestinationVO {

   private String destinationId, name, id, receiver, phone, zipcode, addr, addrDetail, deafaultFlag;
   
   public DestinationVO() {
   }

   public DestinationVO(String destinationId, String name, String id, String receiver, String phone, String zipcode,
         String addr, String addrDetail, String deafaultFlag) {
      this.destinationId = destinationId;
      this.name = name;
      this.id = id;
      this.receiver = receiver;
      this.phone = phone;
      this.zipcode = zipcode;
      this.addr = addr;
      this.addrDetail = addrDetail;
      this.deafaultFlag = deafaultFlag;
   }

   public String getDestinationId() {
      return destinationId;
   }

   public void setDestinationId(String destinationId) {
      this.destinationId = destinationId;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getReceiver() {
      return receiver;
   }

   public void setReceiver(String receiver) {
      this.receiver = receiver;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public String getZipcode() {
      return zipcode;
   }

   public void setZipcode(String zipcode) {
      this.zipcode = zipcode;
   }

   public String getAddr() {
      return addr;
   }

   public void setAddr(String addr) {
      this.addr = addr;
   }

   public String getAddrDetail() {
      return addrDetail;
   }

   public void setAddrDetail(String addrDetail) {
      this.addrDetail = addrDetail;
   }

   public String getDeafaultFlag() {
      return deafaultFlag;
   }

   public void setDeafaultFlag(String deafaultFlag) {
      this.deafaultFlag = deafaultFlag;
   }

   @Override
   public String toString() {
      return "DestinationVO [destinationId=" + destinationId + ", name=" + name + ", id=" + id + ", receiver="
            + receiver + ", phone=" + phone + ", zipcode=" + zipcode + ", addr=" + addr + ", addrDetail="
            + addrDetail + ", deafaultFlag=" + deafaultFlag + "]";
   }
   
   
   
}

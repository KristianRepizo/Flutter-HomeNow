class Home {
  String photoUrlone;
  String photoUrltwo;
  String photoUrlthree;
  String type;
  String nameUser;
  String site;
  String mod;
  int cost;
  int costNow;
  FormatException format = new FormatException("###,###.##");

  Home(
      {this.photoUrlone,
      this.photoUrltwo,
      this.photoUrlthree,
      this.nameUser,
      this.site,
      this.type,
      this.mod,
      this.cost,
      this.costNow});
}

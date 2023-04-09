class DataCafe {
  int id;
  String name;
  String address;
  String addressLink;
  String rangePrices;
  String photo;
  String openHours;
  bool favorite;

  DataCafe({
    required this.id,
    required this.name,
    required this.address,
    required this.addressLink,
    required this.rangePrices,
    required this.photo,
    required this.openHours,
    this.favorite = false,
  });
}

var listCafe = [
  DataCafe(
    id: 1,
    name: "Couvee",
    address:
        "Jl. Seturan Raya No.88, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/jsq547Z86nZm4N4o9",
    rangePrices: "Rp20.000 - Rp28.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/300942877_1118016705802153_4542510303518999108_n.jpg?stp=dst-jpg_e35_p720x720&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=MMv0BpYPXKoAX_90nfS&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MjkxMjQ1NjAxMTU5NjgyOTI5NA%3D%3D.2-ccb7-5&oh=00_AfCK73vEpBUEpTmSDGCci-CBMQCpbc7dNyiN_jpc7kaJ8g&oe=643713EB&_nc_sid=6136e7",
    openHours: "09.00 - 23.30",
    favorite: false,
  ),
  DataCafe(
    id: 2,
    name: "Cosan Coffee",
    address:
        "Jl. Seturan Raya No.6, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/yf2FEesvQbPbpdBv8",
    rangePrices: "Rp18.000 - Rp29.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/318186707_192207056654165_5328067440315136537_n.jpg?stp=dst-jpg_e35_p720x720&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=bUllrGpInRUAX9KrS5n&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=Mjk4Nzk0OTA5NDIxNTY0NDcwNQ%3D%3D.2-ccb7-5&oh=00_AfCcvvBlt8-ywPRWJ-un0LlCu_EVl48o44Hz8LKkQapfpw&oe=64372C9B&_nc_sid=6136e7",
    openHours: "08.00 - 00.00",
    favorite: false,
  ),
  DataCafe(
    id: 3,
    name: "Lestari Corner Coffee",
    address:
        "Jl. Nangka, Krodan, Maguwoharjo, Kec. Depok, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/a5CMbRimV7VCASLz8",
    rangePrices: "Rp11.000 - Rp33.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/322342235_486974443595362_6893667530509303228_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=nD2HmpyA4uYAX-jyOYH&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzAwNDYxODgyMDIwMzQxMDI1Mw%3D%3D.2-ccb7-5&oh=00_AfDd3p83mGzebkP1rP8AHJu76HxdMYPMxx7igaSVVicE4A&oe=64367BF7&_nc_sid=1527a3",
    openHours: "24 Hours",
    favorite: false,
  ),
  DataCafe(
    id: 4,
    name: "Starbucks",
    address: "Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/QjuPxxaU7WjfJrh66",
    rangePrices: "Rp23.000 - Rp100.000",
    photo:
        "https://lh5.googleusercontent.com/p/AF1QipOg6Dq1O7CnHqPOSZyFw5WjAUhPj3GAwFEdCNN3=s483-k-no",
    openHours: "09.00 - 23.00",
    favorite: false,
  ),
  DataCafe(
    id: 5,
    name: "UD Mitra / Coffee",
    address:
        "Jl. Seturan Raya No.189, Ngropoh, Condongcatur, Kec. Depok, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/N5fgKeAqEPyFLq9a8",
    rangePrices: "Rp18.000 - Rp26.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/228873582_2835634756747777_7268044880465535348_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=t80l1Rlfq68AX8SXSGG&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MjYzMTI3NDI1NTA5NDI4NDA4Mw%3D%3D.2-ccb7-5&oh=00_AfCNRuMsOsYt7Ws1kfdTaRVAxsrAELqwEDo7MMJFKASy1w&oe=6435F8FA&_nc_sid=6136e7",
    openHours: "08.00 - 00.00",
    favorite: false,
  ),
  DataCafe(
    id: 6,
    name: "Sepakat Coffee",
    address:
        "Jl. Wahid hasyim No.187A dn, Ngropoh, Condongcatur, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/1XTavzcHpFwA17Ub6",
    rangePrices: "Rp18.000 - Rp34.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/301335560_1288664595296785_2619142270636236303_n.jpg?stp=dst-jpg_e35_p720x720&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=9lNLCICrm0AAX8P1vHC&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MjkxMzMzOTc4MzUyNzY3MTA5OA%3D%3D.2-ccb7-5&oh=00_AfDF0VA3mcSbr2fEk-_8wLTsEdc6awXPpjV4efSY8_XSYw&oe=64366061&_nc_sid=6136e7",
    openHours: "08.00 - 23.00",
    favorite: false,
  ),
  DataCafe(
    id: 7,
    name: "Imba Coffee",
    address: "Soropadan, Condongcatur, Kec. Depok, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/SkBtfn6RNNAFzQhP7",
    rangePrices: "Rp18.000 - Rp40.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/312694168_1360626074472896_4450632869174691256_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=mGS7gKgX4eIAX8hVTOu&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=Mjk1NjA5MzczODYzNTg2MDA4MA%3D%3D.2-ccb7-5&oh=00_AfBpjfGTbG7TeEOtUefcgxySxRSfDRrazPrhLChwATRKMg&oe=64362A0C&_nc_sid=6136e7",
    openHours: "09.00 - 23.00",
    favorite: false,
  ),
  DataCafe(
    id: 8,
    name: "Jempolan Coffee",
    address: "Tiyosan, Condongcatur, Kec. Depok, Kabupaten Sleman, DIY",
    addressLink: "https://goo.gl/maps/uYJ8qwn2FWUkshJc8",
    rangePrices: "Rp15.000 - Rp33.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/277115309_708623863484676_2898090506656523208_n.jpg?stp=dst-jpg_e35_p480x480&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=5BhKtHonmqQAX8qNCCj&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MjgwMTU2ODY3Mjk1MjIyNDU5OA%3D%3D.2-ccb7-5&oh=00_AfD6V8e0Z9NGpmcqPbE74hYIcoZ4zIzxfs4aaPSNiI6PfA&oe=6435CA6F&_nc_sid=6136e7",
    openHours: "09.00 - 23.00",
    favorite: false,
  ),
  DataCafe(
    id: 9,
    name: "Le travail Coffee",
    address:
        "Jl. Laksda Adisucipto No.19, Demangan, Kec. Gondokusuman, Kota Yogyakarta, DIY",
    addressLink: "https://goo.gl/maps/x4WVevRcquUz6RhF9",
    rangePrices: "Rp17.000 - Rp31.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/228494464_130049915974060_850774464471237129_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=cUrL_ggN_acAX8nd-Y4&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MjYzMjY2OTEzODE3NDQ5NDkwNg%3D%3D.2-ccb7-5&oh=00_AfAeMfDk3_A9URb0RJ3-YeqGNfxmvK7b_xY9y8vwquUhZg&oe=6435D802&_nc_sid=6136e7",
    openHours: "09.00 - 01.00",
    favorite: false,
  ),
  DataCafe(
    id: 10,
    name: "Nabe Coffee",
    address:
        "Jl. Soragan No.29, Soragan, Ngestiharjo, Kec. Kasihan, Kabupaten Bantul, DIY",
    addressLink: "https://goo.gl/maps/pCLex5SZJSZWtqon7",
    rangePrices: "Rp15.000 - Rp26.000",
    photo:
        "https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/333421872_199599966033007_4782561480819899853_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=vlWuJaKcMIEAX8THYr_&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzA1ODE1OTY2ODg5OTQwMTQwMA%3D%3D.2-ccb7-5&oh=00_AfAS0dgacrhBh40usLm44jePMcEkz4X906rNiQKXrACEqA&oe=643619C9&_nc_sid=1527a3",
    openHours: "10.00 - 00.00",
    favorite: false,
  ),
];

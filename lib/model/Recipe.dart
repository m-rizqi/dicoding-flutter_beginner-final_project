class Recipe {
  String name;
  String description;
  Map<String, String> ingredients;
  String image;
  String video;
  double rating;
  String eatTime;
  double reviews;

  Recipe(
      {required this.name,
      required this.description,
      required this.ingredients,
      required this.image,
      required this.video,
      required this.rating,
      required this.eatTime,
      required this.reviews});
}

List<Recipe> allRecipes = [
  new Recipe(
    name: 'Nasi Goreng Jawa',
    description:
        'Nasi Goreng Jawa mengandalkan bahan-bahan seperti cabai, baik cabai merah maupun cabai rawit, serta bawang merah dan bawang putih untuk memberikan rasa pedas yang sedap. Selain itu, Nasi Goreng Jawa juga mendapatkan cita rasa khasnya dari penambahan terasi dan kemiri sebagai salah satu bumbu dasar.',
    ingredients: {
      "Nasi": "2 piring",
      "Cabai Merah": "4 Buah",
      "Cabai Rawit": "5 Buah",
      "Bawang Merah": "2 Buah",
      "Bawang Putih": "2 Siung",
      "Terasi": "1/2 Sendok Teh",
      "Kecap Manis": "2 Sendok Makan",
      "Minyak Goreng": "Secukupnya",
      "Telur": "2 Buah"
    },
    image: "http://kbu-cdn.com/dk/wp-content/uploads/nasi-goreng-jawa.jpg",
    video: "Js9FXCkn798",
    rating: 4.5,
    eatTime: "Dinner",
    reviews: 1,
  ),
  new Recipe(
    name: 'Rendang',
    description:
        'Resep rendang sapi ini bisa jadi rekomendasi untuk membuat sajian rendah nikmat khas Padang. Rendang juga menjadi menu wajib saat Lebaran tiba. Memasak rendang juga membutuhkan kesabaran untuk mendapatkan hasil yang maksimal',
    ingredients: {
      "Daging Sapi": "1 Kg",
      "Minyak Goreng": "100 ml",
      "Bawang Merah": "60 gram",
      "Bawang Putih": "50 gram",
      "Santan": "Secukupnya",
      "Daun Jeruk": "4 Lembar",
      "Serai": "3 Batang",
      "Lengkuas": "100 gram",
      "Cengkeh": "2 gram"
    },
    image:
        "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/resep-rendang.jpg",
    video: "oOQa8B1adO8",
    rating: 4.8,
    eatTime: "Dinner",
    reviews: 2,
  ),
  new Recipe(
    name: 'Nasi Kuning',
    description:
        'Nasi kuning ini dapat disantap dengan aneka lauk pendamping. Beberapa lauk seperti ayam goreng, telur balado, dan sambal goreng hati bisa menjadi pilihannya.',
    ingredients: {
      "Minyak Goreng": "100 ml",
      "Bawang Merah": "8 Butir",
      "Bawang Putih": "3 Siung",
      "Daun Salam": "5 Lembar",
      "Daun Pandan": "4 Lembar",
      "Daun Jeruk": "3 Lembar",
      "Beras": "1 Liter",
      "Kunyit": "3 Ruas",
      "Serai": "3 Batang",
      "Santan": "1 Liter",
      "Gula Pasir": "1 Sendok Teh",
      "Garam": "1 Sendok Makan"
    },
    image:
        "https://ik.imagekit.io/10tn5i0v1n/article/187a3227fc914f00919d3db808e25f42.jpeg",
    video: "WIRvYIIRMUs",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1,
  ),
  new Recipe(
    name: "Oatmeal Buah",
    description:
        "Oatmeal merupakan biji-bijian yang kaya vitamin, mineral, serat, antioksidan, dan bebas gluten. Kaya kandungan gizi serta memberikan rasa kenyang menjadikan oatmeal sebagai menu sarapan ideal selama masa diet",
    ingredients: {
      "Oatmeal Instant": "70 gram",
      "Yoghurt": "250ml",
      "Pisang": "1 Buah",
      "Strawberry": "5 Buah",
      "Murbei": "Secukupnya"
    },
    image:
        "https://akcdn.detik.net.id/community/media/visual/2016/04/12/44fa09f5-1115-4a51-b4b1-c2142ee3f6ce_169.jpg?w=620",
    video: "SnLvbzTkYCs",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.8,
  ),
  new Recipe(
    name: "Roti Bakar",
    description:
        "Selain memiliki rasa yang enak dan mudah diolah, roti juga memiliki manfaat untuk memberikan energi. Umumnya roti tawar putih terdiri dari tepung gula dan telur, namun kamu juga bisa menambah bahan olahan lainnya sesuai selera. Menu roti bakar sangat cocok dikonsumsi pada pagi hari, karena setiap orang yang butuh makanan yang bergizi dan cukup agar memiliki energi yang cukup untuk menjalani aktivitas sehari-hari.",
    ingredients: {
      "Roti Tawar": "2 Lembar",
      "Mentega": "Secukupnya",
      "Selai": "Secukupnya",
    },
    image:
        "https://i0.wp.com/www.pengusahasukses.com/wp-content/uploads/2016/06/peluang-bisnis-roti-bakar-dan-analisa-usahanya-pengusaha-sukses.jpg?resize=500%2C332",
    video: "A5nii8LrQBs",
    rating: 4.0,
    eatTime: "Breakfast",
    reviews: 0.7,
  ),
  new Recipe(
    name: "Spaghetti",
    description:
        "spaghetti sangatlah beragam dan memiliki cita rasa yang unik. Beberapa jenis resep spaghetti tersebut seperti bolognese, carbonara, aglio olio, serta berbagai resep spaghetti lainnya. Ternyata untuk mengolahnya juga cukup mudah dan tidak perlu waktu lama.",
    ingredients: {
      "Spaghetti": "500 gram",
      "Saus Tomat": "7 Buah",
      "Daun Bawang": "2 Helai",
      "Keju": "Secukupnya",
    },
    image:
        "https://egafood.co.id/wp-content/uploads/2018/10/Spaghetti-Bolognese.jpg",
    video: "dpn4HBchnmE",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.9,
  ),
  new Recipe(
    name: "Telur Dadar",
    description:
        "Telur dadar menjadi salah satu menu makanan yang digemari masyarakat Indonesia. Selain mudah dibuat, telur dadar juga nikmat, dan menyimpan berbagai nutrisi seperti protein dan karbohidrat yang penting bagi tubuh.",
    ingredients: {
      "Telur": "3 Buah",
      "Kelapa Parut": "1 Sendok Makan",
      "Daun Kunyit": "1 Lembar",
      "Daun Bawang": "1 Buah",
      "Lada Bubuk": "1/4 Sendok Teh",
      "Garam": "1/2 Sendok Teh"
    },
    image:
        "https://cdn0-production-images-kly.akamaized.net/wnqaB2pAXY0eRjDJX5sCubSs_4I=/1280x720/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2410072/original/063662000_1542355013-1__2_.jpg",
    video: "NnjGjw7aWro",
    rating: 4.4,
    eatTime: "Breakfast",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Choco Cookies",
    description:
        "Cookies cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal": "50 gram",
      "Cokelat": "25 gram",
      "Gula": "25 gram",
      "Mentega": "50 gram",
      "Tepung Maizena": "15 gram",
      "Tepung Terigu": "15 gram",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9zXVgP17VzCbYv2XuH2up5ScRgUADVRu-Iw&usqp=CAU",
    video: "W8HSGqi__Is",
    rating: 3.8,
    eatTime: "Snack",
    reviews: 1,
  ),
  new Recipe(
    name: "Sereal",
    description:
        "Sereal cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal Jagung": "50 gram",
      "Chocochips": "25 gram",
      "Fitnes Bar": "25 gram",
      "Susu": "500 ml",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc_tPY_yXOHXOKOHx161QDW9PCzJuck-76L6DhdC85I8EYsfP5yK-QJzX80Glmyu5v2oA&usqp=CAU",
    video: "4_H5pJkUefs",
    rating: 3.9,
    eatTime: "BreakFast",
    reviews: 1,
  ),
  new Recipe(
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://assets.resepedia.id/assets/images/2020/06/1670854133051784-salad-sayur-640.jpg",
    video: "wt8JsotYk2k",
    rating: 4.1,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Salad Buah",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://awsimages.detik.net.id/community/media/visual/2020/12/24/salad-buah-segar.jpeg?w=700&q=90",
    video: "3HtuTCqYPgk",
    rating: 4.2,
    eatTime: "Lunch",
    reviews: 1.1,
  ),
  new Recipe(
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu": "1 Sachet",
      "Gula": "1 Sendok Makan",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://doktersehat.com/wp-content/uploads/2017/02/manfaat-jus-alpukat-doktersehat.jpg",
    video: "-7rL9RchKVk",
    rating: 4.6,
    eatTime: "Lunch",
    reviews: 1.4,
  ),
  new Recipe(
    name: "Es Degan",
    description:
        "Es kelapa merupakan salah satu es yang akrab untuk masyarakat Indonesia yang hidup di daerah tropis. Biasanya saat Ramadhan para pedagang menjajakan es kelapa di pinggir jalan raya. Harganya pun relatih murah, mulai dari Rp 5.000 hingga Rp 10.000 per satu gelas.",
    ingredients: {
      "Kelapa Hijau": "5 Butir",
      "Gula Merah": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://asset.kompas.com/crops/LgGmDBxglevUdnCm4fWkEIkVy-U=/0x0:739x493/750x500/data/photo/2020/01/29/5e3187c1ac05f.jpg",
    video: "nk_yUfrcGaA",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Jus Mangga",
    description:
        "Siapa yang tak suka dengan buah mangga. Bisa dipastikan, semua orang suka dengan buah mangga. Rasa buah mangga yang manis dan terkadang sedikit asam membuat buah mangga menjadi salah satu buah favorit. Selain bisa dinikmati dengan dimakan secara langsung, buah mangga juga bisa dinikmati menjadi beberapa olahan yang super lezat, segar dan pastinya sehat.",
    ingredients: {
      "Mangga": "2 Buah",
      "Gula Pasir": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://s0.bukalapak.com/uploads/content_attachment/0bfe2ac083a1f0bed65e87b5/w-744/foto_ending_jus_mangga.jpg",
    video: "NQb5qtXdC8I",
    rating: 4.2,
    eatTime: "Dinner",
    reviews: 1.0,
  ),
];

List<Recipe> bestRecipeList = [
  new Recipe(
    name: 'Nasi Goreng Jawa',
    description:
        'Nasi Goreng Jawa mengandalkan bahan-bahan seperti cabai, baik cabai merah maupun cabai rawit, serta bawang merah dan bawang putih untuk memberikan rasa pedas yang sedap. Selain itu, Nasi Goreng Jawa juga mendapatkan cita rasa khasnya dari penambahan terasi dan kemiri sebagai salah satu bumbu dasar.',
    ingredients: {
      "Nasi": "2 piring",
      "Cabai Merah": "4 Buah",
      "Cabai Rawit": "5 Buah",
      "Bawang Merah": "2 Buah",
      "Bawang Putih": "2 Siung",
      "Terasi": "1/2 Sendok Teh",
      "Kecap Manis": "2 Sendok Makan",
      "Minyak Goreng": "Secukupnya",
      "Telur": "2 Buah"
    },
    image: "http://kbu-cdn.com/dk/wp-content/uploads/nasi-goreng-jawa.jpg",
    video: "Js9FXCkn798",
    rating: 4.5,
    eatTime: "Dinner",
    reviews: 1,
  ),
  new Recipe(
    name: 'Rendang',
    description:
        'Resep rendang sapi ini bisa jadi rekomendasi untuk membuat sajian rendah nikmat khas Padang. Rendang juga menjadi menu wajib saat Lebaran tiba. Memasak rendang juga membutuhkan kesabaran untuk mendapatkan hasil yang maksimal',
    ingredients: {
      "Daging Sapi": "1 Kg",
      "Minyak Goreng": "100 ml",
      "Bawang Merah": "60 gram",
      "Bawang Putih": "50 gram",
      "Santan": "Secukupnya",
      "Daun Jeruk": "4 Lembar",
      "Serai": "3 Batang",
      "Lengkuas": "100 gram",
      "Cengkeh": "2 gram"
    },
    image:
        "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/resep-rendang.jpg",
    video: "oOQa8B1adO8",
    rating: 4.8,
    eatTime: "Dinner",
    reviews: 2,
  ),
  new Recipe(
    name: 'Nasi Kuning',
    description:
        'Nasi kuning ini dapat disantap dengan aneka lauk pendamping. Beberapa lauk seperti ayam goreng, telur balado, dan sambal goreng hati bisa menjadi pilihannya.',
    ingredients: {
    "Minyak Goreng": "100 ml",
      "Bawang Merah": "8 Butir",
      "Bawang Putih": "3 Siung",
      "Daun Salam": "5 Lembar",
      "Daun Pandan": "4 Lembar",
      "Daun Jeruk": "3 Lembar",
      "Beras": "1 Liter",
      "Kunyit": "3 Ruas",
      "Serai": "3 Batang",
      "Santan": "1 Liter",
      "Gula Pasir": "1 Sendok Teh",
      "Garam": "1 Sendok Makan"
    },
    image:
        "https://ik.imagekit.io/10tn5i0v1n/article/187a3227fc914f00919d3db808e25f42.jpeg",
    video: "WIRvYIIRMUs",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1,
  ),
  new Recipe(
    name: 'Nasi Goreng Jawa',
    description:
        'Nasi Goreng Jawa mengandalkan bahan-bahan seperti cabai, baik cabai merah maupun cabai rawit, serta bawang merah dan bawang putih untuk memberikan rasa pedas yang sedap. Selain itu, Nasi Goreng Jawa juga mendapatkan cita rasa khasnya dari penambahan terasi dan kemiri sebagai salah satu bumbu dasar.',
    ingredients: {
      "Nasi": "2 piring",
      "Cabai Merah": "4 Buah",
      "Cabai Rawit": "5 Buah",
      "Bawang Merah": "2 Buah",
      "Bawang Putih": "2 Siung",
      "Terasi": "1/2 Sendok Teh",
      "Kecap Manis": "2 Sendok Makan",
      "Minyak Goreng": "Secukupnya",
      "Telur": "2 Buah"
    },
    image: "http://kbu-cdn.com/dk/wp-content/uploads/nasi-goreng-jawa.jpg",
    video: "Js9FXCkn798",
    rating: 4.5,
    eatTime: "Dinner",
    reviews: 1,
  ),
  new Recipe(
    name: 'Rendang',
    description:
        'Resep rendang sapi ini bisa jadi rekomendasi untuk membuat sajian rendah nikmat khas Padang. Rendang juga menjadi menu wajib saat Lebaran tiba. Memasak rendang juga membutuhkan kesabaran untuk mendapatkan hasil yang maksimal',
    ingredients: {
      "Daging Sapi": "1 Kg",
      "Minyak Goreng": "100 ml",
      "Bawang Merah": "60 gram",
      "Bawang Putih": "50 gram",
      "Santan": "Secukupnya",
      "Daun Jeruk": "4 Lembar",
      "Serai": "3 Batang",
      "Lengkuas": "100 gram",
      "Cengkeh": "2 gram"
    },
    image:
        "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/resep-rendang.jpg",
    video: "oOQa8B1adO8",
    rating: 4.8,
    eatTime: "Dinner",
    reviews: 2,
  ),
  new Recipe(
    name: 'Nasi Kuning',
    description:
        'Nasi kuning ini dapat disantap dengan aneka lauk pendamping. Beberapa lauk seperti ayam goreng, telur balado, dan sambal goreng hati bisa menjadi pilihannya.',
    ingredients: {
    "Minyak Goreng": "100 ml",
      "Bawang Merah": "8 Butir",
      "Bawang Putih": "3 Siung",
      "Daun Salam": "5 Lembar",
      "Daun Pandan": "4 Lembar",
      "Daun Jeruk": "3 Lembar",
      "Beras": "1 Liter",
      "Kunyit": "3 Ruas",
      "Serai": "3 Batang",
      "Santan": "1 Liter",
      "Gula Pasir": "1 Sendok Teh",
      "Garam": "1 Sendok Makan"
    },
    image:
        "https://ik.imagekit.io/10tn5i0v1n/article/187a3227fc914f00919d3db808e25f42.jpeg",
    video: "WIRvYIIRMUs",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1,
  ),
  new Recipe(
    name: 'Nasi Goreng Jawa',
    description:
        'Nasi Goreng Jawa mengandalkan bahan-bahan seperti cabai, baik cabai merah maupun cabai rawit, serta bawang merah dan bawang putih untuk memberikan rasa pedas yang sedap. Selain itu, Nasi Goreng Jawa juga mendapatkan cita rasa khasnya dari penambahan terasi dan kemiri sebagai salah satu bumbu dasar.',
    ingredients: {
      "Nasi": "2 piring",
      "Cabai Merah": "4 Buah",
      "Cabai Rawit": "5 Buah",
      "Bawang Merah": "2 Buah",
      "Bawang Putih": "2 Siung",
      "Terasi": "1/2 Sendok Teh",
      "Kecap Manis": "2 Sendok Makan",
      "Minyak Goreng": "Secukupnya",
      "Telur": "2 Buah"
    },
    image: "http://kbu-cdn.com/dk/wp-content/uploads/nasi-goreng-jawa.jpg",
    video: "Js9FXCkn798",
    rating: 4.5,
    eatTime: "Dinner",
    reviews: 1,
  ),
  new Recipe(
    name: 'Rendang',
    description:
        'Resep rendang sapi ini bisa jadi rekomendasi untuk membuat sajian rendah nikmat khas Padang. Rendang juga menjadi menu wajib saat Lebaran tiba. Memasak rendang juga membutuhkan kesabaran untuk mendapatkan hasil yang maksimal',
    ingredients: {
      "Daging Sapi": "1 Kg",
      "Minyak Goreng": "100 ml",
      "Bawang Merah": "60 gram",
      "Bawang Putih": "50 gram",
      "Santan": "Secukupnya",
      "Daun Jeruk": "4 Lembar",
      "Serai": "3 Batang",
      "Lengkuas": "100 gram",
      "Cengkeh": "2 gram"
    },
    image:
        "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/resep-rendang.jpg",
    video: "oOQa8B1adO8",
    rating: 4.8,
    eatTime: "Dinner",
    reviews: 2,
  ),
  new Recipe(
    name: 'Nasi Kuning',
    description:
        'Nasi kuning ini dapat disantap dengan aneka lauk pendamping. Beberapa lauk seperti ayam goreng, telur balado, dan sambal goreng hati bisa menjadi pilihannya.',
    ingredients: {
    "Minyak Goreng": "100 ml",
      "Bawang Merah": "8 Butir",
      "Bawang Putih": "3 Siung",
      "Daun Salam": "5 Lembar",
      "Daun Pandan": "4 Lembar",
      "Daun Jeruk": "3 Lembar",
      "Beras": "1 Liter",
      "Kunyit": "3 Ruas",
      "Serai": "3 Batang",
      "Santan": "1 Liter",
      "Gula Pasir": "1 Sendok Teh",
      "Garam": "1 Sendok Makan"
    },
    image:
        "https://ik.imagekit.io/10tn5i0v1n/article/187a3227fc914f00919d3db808e25f42.jpeg",
    video: "WIRvYIIRMUs",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1,
  ),
];

List<Recipe> fastRecipeList = [
  new Recipe(
    name: "Oatmeal Buah",
    description:
        "Oatmeal merupakan biji-bijian yang kaya vitamin, mineral, serat, antioksidan, dan bebas gluten. Kaya kandungan gizi serta memberikan rasa kenyang menjadikan oatmeal sebagai menu sarapan ideal selama masa diet",
    ingredients: {
      "Oatmeal Instant": "70 gram",
      "Yoghurt": "250ml",
      "Pisang": "1 Buah",
      "Strawberry": "5 Buah",
      "Murbei": "Secukupnya"
    },
    image:
        "https://akcdn.detik.net.id/community/media/visual/2016/04/12/44fa09f5-1115-4a51-b4b1-c2142ee3f6ce_169.jpg?w=620",
    video: "SnLvbzTkYCs",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.8,
  ),
  new Recipe(
    name: "Roti Bakar",
    description:
        "Selain memiliki rasa yang enak dan mudah diolah, roti juga memiliki manfaat untuk memberikan energi. Umumnya roti tawar putih terdiri dari tepung gula dan telur, namun kamu juga bisa menambah bahan olahan lainnya sesuai selera. Menu roti bakar sangat cocok dikonsumsi pada pagi hari, karena setiap orang yang butuh makanan yang bergizi dan cukup agar memiliki energi yang cukup untuk menjalani aktivitas sehari-hari.",
    ingredients: {
      "Roti Tawar": "2 Lembar",
      "Mentega": "Secukupnya",
      "Selai": "Secukupnya",
    },
    image:
        "https://i0.wp.com/www.pengusahasukses.com/wp-content/uploads/2016/06/peluang-bisnis-roti-bakar-dan-analisa-usahanya-pengusaha-sukses.jpg?resize=500%2C332",
    video: "A5nii8LrQBs",
    rating: 4.0,
    eatTime: "Breakfast",
    reviews: 0.7,
  ),
  new Recipe(
    name: "Spaghetti",
    description:
        "spaghetti sangatlah beragam dan memiliki cita rasa yang unik. Beberapa jenis resep spaghetti tersebut seperti bolognese, carbonara, aglio olio, serta berbagai resep spaghetti lainnya. Ternyata untuk mengolahnya juga cukup mudah dan tidak perlu waktu lama.",
    ingredients: {
      "Spaghetti": "500 gram",
      "Saus Tomat": "7 Buah",
      "Daun Bawang": "2 Helai",
      "Keju": "Secukupnya",
    },
    image:
        "https://egafood.co.id/wp-content/uploads/2018/10/Spaghetti-Bolognese.jpg",
    video: "dpn4HBchnmE",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.9,
  ),
  new Recipe(
    name: "Oatmeal Buah",
    description:
        "Oatmeal merupakan biji-bijian yang kaya vitamin, mineral, serat, antioksidan, dan bebas gluten. Kaya kandungan gizi serta memberikan rasa kenyang menjadikan oatmeal sebagai menu sarapan ideal selama masa diet",
    ingredients: {
      "Oatmeal Instant": "70 gram",
      "Yoghurt": "250ml",
      "Pisang": "1 Buah",
      "Strawberry": "5 Buah",
      "Murbei": "Secukupnya"
    },
    image:
        "https://akcdn.detik.net.id/community/media/visual/2016/04/12/44fa09f5-1115-4a51-b4b1-c2142ee3f6ce_169.jpg?w=620",
    video: "SnLvbzTkYCs",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.8,
  ),
  new Recipe(
    name: "Roti Bakar",
    description:
        "Selain memiliki rasa yang enak dan mudah diolah, roti juga memiliki manfaat untuk memberikan energi. Umumnya roti tawar putih terdiri dari tepung gula dan telur, namun kamu juga bisa menambah bahan olahan lainnya sesuai selera. Menu roti bakar sangat cocok dikonsumsi pada pagi hari, karena setiap orang yang butuh makanan yang bergizi dan cukup agar memiliki energi yang cukup untuk menjalani aktivitas sehari-hari.",
    ingredients: {
      "Roti Tawar": "2 Lembar",
      "Mentega": "Secukupnya",
      "Selai": "Secukupnya",
    },
    image:
        "https://i0.wp.com/www.pengusahasukses.com/wp-content/uploads/2016/06/peluang-bisnis-roti-bakar-dan-analisa-usahanya-pengusaha-sukses.jpg?resize=500%2C332",
    video: "A5nii8LrQBs",
    rating: 4.0,
    eatTime: "Breakfast",
    reviews: 0.7,
  ),
  new Recipe(
    name: "Spaghetti",
    description:
        "spaghetti sangatlah beragam dan memiliki cita rasa yang unik. Beberapa jenis resep spaghetti tersebut seperti bolognese, carbonara, aglio olio, serta berbagai resep spaghetti lainnya. Ternyata untuk mengolahnya juga cukup mudah dan tidak perlu waktu lama.",
    ingredients: {
      "Spaghetti": "500 gram",
      "Saus Tomat": "7 Buah",
      "Daun Bawang": "2 Helai",
      "Keju": "Secukupnya",
    },
    image:
        "https://egafood.co.id/wp-content/uploads/2018/10/Spaghetti-Bolognese.jpg",
    video: "dpn4HBchnmE",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.9,
  ),
  new Recipe(
    name: "Oatmeal Buah",
    description:
        "Oatmeal merupakan biji-bijian yang kaya vitamin, mineral, serat, antioksidan, dan bebas gluten. Kaya kandungan gizi serta memberikan rasa kenyang menjadikan oatmeal sebagai menu sarapan ideal selama masa diet",
    ingredients: {
      "Oatmeal Instant": "70 gram",
      "Yoghurt": "250ml",
      "Pisang": "1 Buah",
      "Strawberry": "5 Buah",
      "Murbei": "Secukupnya"
    },
    image:
        "https://akcdn.detik.net.id/community/media/visual/2016/04/12/44fa09f5-1115-4a51-b4b1-c2142ee3f6ce_169.jpg?w=620",
    video: "SnLvbzTkYCs",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.8,
  ),
  new Recipe(
    name: "Roti Bakar",
    description:
        "Selain memiliki rasa yang enak dan mudah diolah, roti juga memiliki manfaat untuk memberikan energi. Umumnya roti tawar putih terdiri dari tepung gula dan telur, namun kamu juga bisa menambah bahan olahan lainnya sesuai selera. Menu roti bakar sangat cocok dikonsumsi pada pagi hari, karena setiap orang yang butuh makanan yang bergizi dan cukup agar memiliki energi yang cukup untuk menjalani aktivitas sehari-hari.",
    ingredients: {
      "Roti Tawar": "2 Lembar",
      "Mentega": "Secukupnya",
      "Selai": "Secukupnya",
    },
    image:
        "https://i0.wp.com/www.pengusahasukses.com/wp-content/uploads/2016/06/peluang-bisnis-roti-bakar-dan-analisa-usahanya-pengusaha-sukses.jpg?resize=500%2C332",
    video: "A5nii8LrQBs",
    rating: 4.0,
    eatTime: "Breakfast",
    reviews: 0.7,
  ),
  new Recipe(
    name: "Spaghetti",
    description:
        "spaghetti sangatlah beragam dan memiliki cita rasa yang unik. Beberapa jenis resep spaghetti tersebut seperti bolognese, carbonara, aglio olio, serta berbagai resep spaghetti lainnya. Ternyata untuk mengolahnya juga cukup mudah dan tidak perlu waktu lama.",
    ingredients: {
      "Spaghetti": "500 gram",
      "Saus Tomat": "7 Buah",
      "Daun Bawang": "2 Helai",
      "Keju": "Secukupnya",
    },
    image:
        "https://egafood.co.id/wp-content/uploads/2018/10/Spaghetti-Bolognese.jpg",
    video: "dpn4HBchnmE",
    rating: 4.2,
    eatTime: "Breakfast",
    reviews: 0.9,
  ),
];

List<Recipe> easyRecipeList = [
  new Recipe(
    name: "Telur Dadar",
    description:
        "Telur dadar menjadi salah satu menu makanan yang digemari masyarakat Indonesia. Selain mudah dibuat, telur dadar juga nikmat, dan menyimpan berbagai nutrisi seperti protein dan karbohidrat yang penting bagi tubuh.",
    ingredients: {
      "Telur": "3 Buah",
      "Kelapa Parut": "1 Sendok Makan",
      "Daun Kunyit": "1 Lembar",
      "Daun Bawang": "1 Buah",
      "Lada Bubuk": "1/4 Sendok Teh",
      "Garam": "1/2 Sendok Teh"
    },
    image:
        "https://cdn0-production-images-kly.akamaized.net/wnqaB2pAXY0eRjDJX5sCubSs_4I=/1280x720/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2410072/original/063662000_1542355013-1__2_.jpg",
    video: "NnjGjw7aWro",
    rating: 4.4,
    eatTime: "Breakfast",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Choco Cookies",
    description:
        "Cookies cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal": "50 gram",
      "Cokelat": "25 gram",
      "Gula": "25 gram",
      "Mentega": "50 gram",
      "Tepung Maizena": "15 gram",
      "Tepung Terigu": "15 gram",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9zXVgP17VzCbYv2XuH2up5ScRgUADVRu-Iw&usqp=CAU",
    video: "W8HSGqi__Is",
    rating: 3.8,
    eatTime: "Snack",
    reviews: 1,
  ),
  new Recipe(
    name: "Sereal",
    description:
        "Sereal cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal Jagung": "50 gram",
      "Chocochips": "25 gram",
      "Fitnes Bar": "25 gram",
      "Susu": "500 ml",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc_tPY_yXOHXOKOHx161QDW9PCzJuck-76L6DhdC85I8EYsfP5yK-QJzX80Glmyu5v2oA&usqp=CAU",
    video: "4_H5pJkUefs",
    rating: 3.9,
    eatTime: "BreakFast",
    reviews: 1,
  ),
  new Recipe(
    name: "Telur Dadar",
    description:
        "Telur dadar menjadi salah satu menu makanan yang digemari masyarakat Indonesia. Selain mudah dibuat, telur dadar juga nikmat, dan menyimpan berbagai nutrisi seperti protein dan karbohidrat yang penting bagi tubuh.",
    ingredients: {
      "Telur": "3 Buah",
      "Kelapa Parut": "1 Sendok Makan",
      "Daun Kunyit": "1 Lembar",
      "Daun Bawang": "1 Buah",
      "Lada Bubuk": "1/4 Sendok Teh",
      "Garam": "1/2 Sendok Teh"
    },
    image:
        "https://cdn0-production-images-kly.akamaized.net/wnqaB2pAXY0eRjDJX5sCubSs_4I=/1280x720/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2410072/original/063662000_1542355013-1__2_.jpg",
    video: "NnjGjw7aWro",
    rating: 4.4,
    eatTime: "Breakfast",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Choco Cookies",
    description:
        "Cookies cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal": "50 gram",
      "Cokelat": "25 gram",
      "Gula": "25 gram",
      "Mentega": "50 gram",
      "Tepung Maizena": "15 gram",
      "Tepung Terigu": "15 gram",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9zXVgP17VzCbYv2XuH2up5ScRgUADVRu-Iw&usqp=CAU",
    video: "W8HSGqi__Is",
    rating: 3.8,
    eatTime: "Snack",
    reviews: 1,
  ),
  new Recipe(
    name: "Sereal",
    description:
        "Sereal cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal Jagung": "50 gram",
      "Chocochips": "25 gram",
      "Fitnes Bar": "25 gram",
      "Susu": "500 ml",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc_tPY_yXOHXOKOHx161QDW9PCzJuck-76L6DhdC85I8EYsfP5yK-QJzX80Glmyu5v2oA&usqp=CAU",
    video: "4_H5pJkUefs",
    rating: 3.9,
    eatTime: "BreakFast",
    reviews: 1,
  ),
  new Recipe(
    name: "Telur Dadar",
    description:
        "Telur dadar menjadi salah satu menu makanan yang digemari masyarakat Indonesia. Selain mudah dibuat, telur dadar juga nikmat, dan menyimpan berbagai nutrisi seperti protein dan karbohidrat yang penting bagi tubuh.",
    ingredients: {
      "Telur": "3 Buah",
      "Kelapa Parut": "1 Sendok Makan",
      "Daun Kunyit": "1 Lembar",
      "Daun Bawang": "1 Buah",
      "Lada Bubuk": "1/4 Sendok Teh",
      "Garam": "1/2 Sendok Teh"
    },
    image:
        "https://cdn0-production-images-kly.akamaized.net/wnqaB2pAXY0eRjDJX5sCubSs_4I=/1280x720/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2410072/original/063662000_1542355013-1__2_.jpg",
    video: "NnjGjw7aWro",
    rating: 4.4,
    eatTime: "Breakfast",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Choco Cookies",
    description:
        "Cookies cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal": "50 gram",
      "Cokelat": "25 gram",
      "Gula": "25 gram",
      "Mentega": "50 gram",
      "Tepung Maizena": "15 gram",
      "Tepung Terigu": "15 gram",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9zXVgP17VzCbYv2XuH2up5ScRgUADVRu-Iw&usqp=CAU",
    video: "W8HSGqi__Is",
    rating: 3.8,
    eatTime: "Snack",
    reviews: 1,
  ),
  new Recipe(
    name: "Sereal",
    description:
        "Sereal cocok dijadikan stok makanan, biar gak perlu sering-sering keluar rumah. Biar gak bosan makan sereal polosan, kamu bisa mengkreasikannya menjadi olahan yang lebih menarik.",
    ingredients: {
      "Sereal Jagung": "50 gram",
      "Chocochips": "25 gram",
      "Fitnes Bar": "25 gram",
      "Susu": "500 ml",
    },
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc_tPY_yXOHXOKOHx161QDW9PCzJuck-76L6DhdC85I8EYsfP5yK-QJzX80Glmyu5v2oA&usqp=CAU",
    video: "4_H5pJkUefs",
    rating: 3.9,
    eatTime: "BreakFast",
    reviews: 1,
  ),
];

List<Recipe> veganRecipeList = [
  new Recipe(
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://assets.resepedia.id/assets/images/2020/06/1670854133051784-salad-sayur-640.jpg",
    video: "wt8JsotYk2k",
    rating: 4.1,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Salad Buah",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://awsimages.detik.net.id/community/media/visual/2020/12/24/salad-buah-segar.jpeg?w=700&q=90",
    video: "3HtuTCqYPgk",
    rating: 4.2,
    eatTime: "Lunch",
    reviews: 1.1,
  ),
  new Recipe(
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://assets.resepedia.id/assets/images/2020/06/1670854133051784-salad-sayur-640.jpg",
    video: "wt8JsotYk2k",
    rating: 4.1,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Salad Buah",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://awsimages.detik.net.id/community/media/visual/2020/12/24/salad-buah-segar.jpeg?w=700&q=90",
    video: "3HtuTCqYPgk",
    rating: 4.2,
    eatTime: "Lunch",
    reviews: 1.1,
  ),
  new Recipe(
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://assets.resepedia.id/assets/images/2020/06/1670854133051784-salad-sayur-640.jpg",
    video: "wt8JsotYk2k",
    rating: 4.1,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Salad Buah",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://awsimages.detik.net.id/community/media/visual/2020/12/24/salad-buah-segar.jpeg?w=700&q=90",
    video: "3HtuTCqYPgk",
    rating: 4.2,
    eatTime: "Lunch",
    reviews: 1.1,
  ),
  new Recipe(
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Mayonaise": "3 Sendok Makan",
      "Gula": "1/4 Sendok Makan",
      "Saus Tomat": "1 Sendok Makan",
      "Garam": "Secukupnya"
    },
    image:
        "https://assets.resepedia.id/assets/images/2020/06/1670854133051784-salad-sayur-640.jpg",
    video: "wt8JsotYk2k",
    rating: 4.1,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
];

List<Recipe> beverageRecipeList = [
  new Recipe(
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu": "1 Sachet",
      "Gula": "1 Sendok Makan",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://doktersehat.com/wp-content/uploads/2017/02/manfaat-jus-alpukat-doktersehat.jpg",
    video: "-7rL9RchKVk",
    rating: 4.6,
    eatTime: "Lunch",
    reviews: 1.4,
  ),
  new Recipe(
    name: "Es Degan",
    description:
        "Es kelapa merupakan salah satu es yang akrab untuk masyarakat Indonesia yang hidup di daerah tropis. Biasanya saat Ramadhan para pedagang menjajakan es kelapa di pinggir jalan raya. Harganya pun relatih murah, mulai dari Rp 5.000 hingga Rp 10.000 per satu gelas.",
    ingredients: {
      "Kelapa Hijau": "5 Butir",
      "Gula Merah": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://asset.kompas.com/crops/LgGmDBxglevUdnCm4fWkEIkVy-U=/0x0:739x493/750x500/data/photo/2020/01/29/5e3187c1ac05f.jpg",
    video: "nk_yUfrcGaA",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Jus Mangga",
    description:
        "Siapa yang tak suka dengan buah mangga. Bisa dipastikan, semua orang suka dengan buah mangga. Rasa buah mangga yang manis dan terkadang sedikit asam membuat buah mangga menjadi salah satu buah favorit. Selain bisa dinikmati dengan dimakan secara langsung, buah mangga juga bisa dinikmati menjadi beberapa olahan yang super lezat, segar dan pastinya sehat.",
    ingredients: {
      "Mangga": "2 Buah",
      "Gula Pasir": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://s0.bukalapak.com/uploads/content_attachment/0bfe2ac083a1f0bed65e87b5/w-744/foto_ending_jus_mangga.jpg",
    video: "NQb5qtXdC8I",
    rating: 4.2,
    eatTime: "Dinner",
    reviews: 1.0,
  ),
  new Recipe(
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu": "1 Sachet",
      "Gula": "1 Sendok Makan",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://doktersehat.com/wp-content/uploads/2017/02/manfaat-jus-alpukat-doktersehat.jpg",
    video: "-7rL9RchKVk",
    rating: 4.6,
    eatTime: "Lunch",
    reviews: 1.4,
  ),
  new Recipe(
    name: "Es Degan",
    description:
        "Es kelapa merupakan salah satu es yang akrab untuk masyarakat Indonesia yang hidup di daerah tropis. Biasanya saat Ramadhan para pedagang menjajakan es kelapa di pinggir jalan raya. Harganya pun relatih murah, mulai dari Rp 5.000 hingga Rp 10.000 per satu gelas.",
    ingredients: {
      "Kelapa Hijau": "5 Butir",
      "Gula Merah": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://asset.kompas.com/crops/LgGmDBxglevUdnCm4fWkEIkVy-U=/0x0:739x493/750x500/data/photo/2020/01/29/5e3187c1ac05f.jpg",
    video: "nk_yUfrcGaA",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Jus Mangga",
    description:
        "Siapa yang tak suka dengan buah mangga. Bisa dipastikan, semua orang suka dengan buah mangga. Rasa buah mangga yang manis dan terkadang sedikit asam membuat buah mangga menjadi salah satu buah favorit. Selain bisa dinikmati dengan dimakan secara langsung, buah mangga juga bisa dinikmati menjadi beberapa olahan yang super lezat, segar dan pastinya sehat.",
    ingredients: {
      "Mangga": "2 Buah",
      "Gula Pasir": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://s0.bukalapak.com/uploads/content_attachment/0bfe2ac083a1f0bed65e87b5/w-744/foto_ending_jus_mangga.jpg",
    video: "NQb5qtXdC8I",
    rating: 4.2,
    eatTime: "Dinner",
    reviews: 1.0,
  ),
  new Recipe(
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu": "1 Sachet",
      "Gula": "1 Sendok Makan",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://doktersehat.com/wp-content/uploads/2017/02/manfaat-jus-alpukat-doktersehat.jpg",
    video: "-7rL9RchKVk",
    rating: 4.6,
    eatTime: "Lunch",
    reviews: 1.4,
  ),
  new Recipe(
    name: "Es Degan",
    description:
        "Es kelapa merupakan salah satu es yang akrab untuk masyarakat Indonesia yang hidup di daerah tropis. Biasanya saat Ramadhan para pedagang menjajakan es kelapa di pinggir jalan raya. Harganya pun relatih murah, mulai dari Rp 5.000 hingga Rp 10.000 per satu gelas.",
    ingredients: {
      "Kelapa Hijau": "5 Butir",
      "Gula Merah": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://asset.kompas.com/crops/LgGmDBxglevUdnCm4fWkEIkVy-U=/0x0:739x493/750x500/data/photo/2020/01/29/5e3187c1ac05f.jpg",
    video: "nk_yUfrcGaA",
    rating: 4.3,
    eatTime: "Lunch",
    reviews: 1.2,
  ),
  new Recipe(
    name: "Jus Mangga",
    description:
        "Siapa yang tak suka dengan buah mangga. Bisa dipastikan, semua orang suka dengan buah mangga. Rasa buah mangga yang manis dan terkadang sedikit asam membuat buah mangga menjadi salah satu buah favorit. Selain bisa dinikmati dengan dimakan secara langsung, buah mangga juga bisa dinikmati menjadi beberapa olahan yang super lezat, segar dan pastinya sehat.",
    ingredients: {
      "Mangga": "2 Buah",
      "Gula Pasir": "250 gram",
      "Air": "200 ml",
      "Es Batu": "Secukupnya",
    },
    image:
        "https://s0.bukalapak.com/uploads/content_attachment/0bfe2ac083a1f0bed65e87b5/w-744/foto_ending_jus_mangga.jpg",
    video: "NQb5qtXdC8I",
    rating: 4.2,
    eatTime: "Dinner",
    reviews: 1.0,
  ),
];

List<List<Recipe>> allList = [
  bestRecipeList,
  fastRecipeList,
  easyRecipeList,
  veganRecipeList,
  beverageRecipeList,
];
List<String> nameAllList = ["Recommended", "Easy", "Meal", "Vegan", "Juicy"];

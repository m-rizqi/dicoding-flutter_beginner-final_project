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
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Bawang Bombay": "1/2 Buah",
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
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu Kental Manis": "2 Sendok Makan",
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
      "Bawang Bombay": "1/2 Buah",
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
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Bawang Bombay": "1/2 Buah",
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
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Bawang Bombay": "1/2 Buah",
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
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Bawang Bombay": "1/2 Buah",
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
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Bawang Bombay": "1/2 Buah",
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
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Bawang Bombay": "1/2 Buah",
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
    name: "Salad Sayur",
    description:
        "Setelah menikmati makanan berat, kurang afdol rasanya kalau belum menyantap penutup mulut. Salah satu pencuci mulut favorit yang disukai banyak orang adalah salad.",
    ingredients: {
      "Daun Kol": "2 Lembar",
      "Wortel": "1 Buah",
      "Tomat": "1/2 Buah",
      "Jagung Pipil": "5 Sendok Makan",
      "Jeruk Nipis": "1 Buah",
      "Bawang Bombay": "1/2 Buah",
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
      "Susu Kental Manis": "2 Sendok Makan",
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
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu Kental Manis": "2 Sendok Makan",
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
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu Kental Manis": "2 Sendok Makan",
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
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu Kental Manis": "2 Sendok Makan",
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
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu Kental Manis": "2 Sendok Makan",
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
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu Kental Manis": "2 Sendok Makan",
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
    name: "Jus Alpukat",
    description:
        "Alpukat merupakan salah satu buah yang sering dikonsumsi sehari-hari. Buah yang berbentuk unik ini mempunyai rasa manis dan tekstur yang super lembut. Biasanya buah alpukat kerap diberikan pada bayi yang mulai mendapatkan makanan pendamping ASI. Teksturnya yang sangat lembut dinilai ramah untuk pencernaan bayi yang belum berkembang sempurna.",
    ingredients: {
      "Alpukat": "1/2 Buah",
      "Susu Kental Manis": "2 Sendok Makan",
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
];

List<List<Recipe>> allList = [
  bestRecipeList,
  fastRecipeList,
  easyRecipeList,
  veganRecipeList,
  beverageRecipeList,
];
List<String> nameAllList = [
  "Recommended","Easy", "Vegan", "Meal", "Juicy"
];

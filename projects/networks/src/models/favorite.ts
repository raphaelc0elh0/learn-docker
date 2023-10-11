import mongoose from "mongoose";

const favoriteSchema = new mongoose.Schema({
  type: String, // 'movie' | 'character'
  name: String,
  url: String,
});

const Favorite = mongoose.model("Favorite", favoriteSchema);

export default Favorite;

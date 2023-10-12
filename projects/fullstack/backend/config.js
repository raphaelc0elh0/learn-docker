module.exports = {
  mongo: {
    uri: `mongodb://${process.env.MONGO_INITDB_ROOT_USERNAME}:${process.env.MONGO_INITDB_ROOT_PASSWORD}@mongodb:27017/course-goals?authSource=admin`,
  },
};

// Some data to make the trick

const categories = [
  {
    id: 1,
    name: "Science-Fiction",
  },
  {
    id: 2,
    name: "Comédie",
  },
];

const browse = (req, res) => {
  res.json(categories);
};

const read = (req, res) => {
  const parsedId = parseInt(req.params.id, 10);

  const categorie = categories.find((c) => c.id === parsedId);

  if (categorie != null) {
    res.json(categorie.name);
  } else {
    res.sendStatus(404);
  }
};

// Export it to import it somewhere else

module.exports = { browse, read };

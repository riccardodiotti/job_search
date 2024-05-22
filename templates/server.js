app.post("/", (req, res) => {
    const { keyword } = req.body;
  
    // validate the data from the request
    if (!keyword ) {
     return res.status(400).send({
        status: "failed",
        message: "fields are required"
     });
    }
  
    res.status(201).send({status: "received"});
  });
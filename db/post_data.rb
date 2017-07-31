def get_post_data
  post_data = {
    "post1" => {
                    name: "Ruby rails",
                    content: "test 1",
                    is_published: True,
                  },
    "post2" => {
                    name: "scooby",
                    content: "you damn kids and your hip hop",
                    is_published: True,
                  },
    "post3" => {
                    name: "test 3",
                    photo_url: "does this work",
                    nationality: False,
                  }
    }
  return post_data
end

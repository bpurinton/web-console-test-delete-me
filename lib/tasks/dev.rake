desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  Post.destroy_all

  Post.create(title: "hi", content: "there")
  Post.create(title: "hi2", content: "there2")
  Post.create(title: "hi3", content: "there3")

  puts "sample data done"
end

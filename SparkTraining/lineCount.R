library("SparkR")

sc <- sparkR.init(master = 'local', appName = 'Test1')
lines <- textFile(sc, '~/Spark/spark-1.2.0-bin-hadoop1/README.md')
lines <- cache(lines)
count(lines)

pythonLines <- filterRDD(lines, function(line) {
  length(i <- grep('Python', line))
})

beer <- parallelize(sc, c("I", "love", "beer"))

count(beer)
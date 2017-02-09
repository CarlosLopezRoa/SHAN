bin/nutch generate crawl/crawldb crawl/segments -topN 10000
s6=`ls -d crawl/segments/2* | tail -1`
echo $s5

bin/nutch fetch $s6
bin/nutch parse $s6
bin/nutch updatedb crawl/crawldb $s6

bin/nutch solrindex http://127.0.0.1:8983/solr/shannutch crawl/crawldb -linkdb crawl/linkdb crawl/segments/
% Test document
% Author
% Date

# Estimating genome sizes of euphies using kmer counting
Kmers were already counted using jellyfish

Read data 


```r
library(ggplot2)
setwd(paste(Sys.getenv("PROJECTS"), "/euphies/joint", sep = ""))
au <- read.table("../aurinia/assembly/data/jellyfish/histo.txt", header = FALSE)
```

```
## Warning: cannot open file '../aurinia/assembly/data/jellyfish/histo.txt':
## No such file or directory
```

```
## Error: cannot open the connection
```

```r
ed <- read.table("../editha/assembly/data/jellyfish/histo.txt", header = FALSE)
```

```
## Warning: cannot open file '../editha/assembly/data/jellyfish/histo.txt':
## No such file or directory
```

```
## Error: cannot open the connection
```

```r
au$species <- "aurinia"
ed$species <- "editha"
ggplot(rbind(au, ed), aes(x = V1, y = V2, color = species)) + geom_point() + 
    scale_y_log10() + xlim(1, 500)
```

```
## Warning: Removed 19002 rows containing missing values (geom_point).
```

![plot of chunk genome_size_check](figure/genome_size_check.png) 



# Gene_Locus_Map Rationale 

Genetists love to look at genes, the hereditary units found within DNA that are passed from parents to offspring. Many times in publications, genetists want to draw the linear structure of genes as portions of their figures. This task, although seemingly simple, has several caveats. First, this task can be time consuming depending on the number of loci required to display. Second, the drawings should be done to scale, so as to maintain consistenty in the sizes of different genes. Although figure creating tools such as PowerPoint and Illustrator can be used, they both take extensive of effort/time to generate less than perfect figures and in some cases can have prohibitive costs. At least one R package, called "gggenes," exists to generate accurate gene maps (https://cran.r-project.org/web/packages/gggenes/vignettes/introduction-to-gggenes.html). However, from my own research experience, I have found it difficult to display genes expressed from the forward and reverse orientation on the same strand. As such, I have generated this Shiny App that calls the gggenes package in response to input data to make figure generation for such gene pairs rapid, simple, and accurate with the click of a button. Since this is the first prototype of the app, it is limited to simply drawing two gene pairs. We plan to expand the usability of this app by allowing users to choose the number of genes they wish to display as well as allowing users to make multiple plots within one session.

# What you need for this Shiny App:

-A name for your project

-One contiguous gene pair from any genome (i.e. Mouse, human, yeast, fruit fly)

-The chromosomal location of these two genes

-Knowledge of which strand the gene is expressed from (i.e. Forward or reverse)

# Sample data:

We will use the following two yeast genes as an example: NCL1 and MCM2 located in a convergent orientation on chromosome II. 

NCL1 is a 2055bp gene expressed from the forward strand spanning the following coordinates: 172534..174588
MCM2 is a 2607bp gene expressed from the reverse strand spanning the following coordinates: 174920..177526

# Step-by-step example:

1) Name project: Example
2) In the left column, fill in the following information:
      1) Gene 1: NCL1
      2) Start: 172534
      3) End: 174588
      4) Forward (1) or Reverse (-1): 1
3) In the right column, fill in the following information:
      1) Gene 2: MCM2
      2) Start: 174920
      3) End: 177526
      4) Forward (1) or Reverse (-1): -1
4) Click submit
5) Look at reactive table and reactive gene locus plot
6) Bonus: toggle between 1 and -1 for either of the gene pairs to see the arrow direction on the plot change. 

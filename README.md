# Sentida
Sentida is a Danish sentiment analysis tool. Sentida sentiment-scores sentences by the word, and gives either a mean sentiment score or a total score. Sentida uses sophisticated methods to take adverb-modifiers, exclamation marks and negations into account when sentiment-scoring.

# Downloading Sentida for the first time
## R

```
if(!require("devtools")) install.packages("devtools")

devtools::install_github("Guscode/Sentida")

library(Sentida)
```

## Python

```
pip install sentida
```

# Using Sentida
## R

The sentida function takes in a string and an output argument. The output argument can be the default "total" or "mean".
Output = "total" will provide an accumulated sentiment score for the string.
Output = "mean" will provide a mean sentiment score per word in the string.

## Python
\[unstable\]

The sentida function in the Sentida class takes four arguments: The input text, the desired output, normalization, and the desired speed / accuracy prioritization. "mean" and "total" return a single float value and "by_sentence_mean" and "by_sentence_total" return a list of length equal to the amount of sentences.

Speed can be set to fast for a much less accurate but 180% faster implementation.

```
from sentida import Sentida
Sentida().sentida(
                text,
                output = ["mean", "total", "by_sentence_mean", "by_sentence_total"],
                normal = True,
                speed = ["normal", "fast"]
                )
```

# Examples

Sentida in a political context:

Total score:

```sentida("Abort er mord", output = "total") -> -4.67```

Mean score:

```sentida("Abort er mord", output = "mean") -> -1.56```

Effect of exclamation mark:

```sentida("Abort er mord!", output = "total") -> -6.02```



Sentida in a commercial context:

Total score:

```sentida("Colgate er godt og smager dejligt", output = "total") -> 5```

Effect of adverb modifiers:

```sentida("Colgate er godt og smager mega dejligt", output = "total") -> 5.8```

Effect of negations:

```sentida("Colgate er ikke godt og smager ikke dejligt", output = "total") <- -4.34```



# Working with æøå

Working with æøå in R can cause certain problems.
When workin with R in mac os, it is necessary to run the following code, in order to work with æøå.


```Sys.setlocale(category = "LC_ALL", locale = "UTF-8") ```


Furthermore, encoding necessary files in UTF-8 format, will make æøå accessible to Rstudio.

# Creators
Sentida has been created by three Cognitive Science bachelor students at Aarhus University:

Lars Kjartan Bacher Svendsen

Jacob Aarup Dalsgaard

Gustav Aarup Lauridsen

For commercial use, please contact:
Email: Gustavaarup0111@gmail.com, jacdals@hotmail.com, larskjartanbachersvendsen@gmail.com

The Python implementation has been created by:

[Esben Kran](https://github.com/esbenkc)

[Søren Orm](https://github.com/sorenorm)
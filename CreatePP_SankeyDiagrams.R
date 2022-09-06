
source("SankeyR.R")

# Primary productivity
SankeyR(input = 100, losses = 100*c(0.47, 0.25, 0.19, 0.04, 0.05),
        labels = c("Sunlight", "not photosynthetically active", "not absorbed", "conversion costs", "cost of business", "GPP"),
        unit = "%", format = "pdf")

# should save a file called "sankey.pdf", which can then be adjusted & rotated

# Secondary production of Daphnia, sort of taken from Urabe, J., and Y. Watanabe. 1991. Effect of Food Concentration on the Assimilation and Production Efficiencies of Daphnia galeata G.O. Sars (Crustacea: Cladocera). Functional Ecology 5:635-641.
# should roughly correspond to 100 daphnia
SankeyR(input = 2500, losses = c(1200, 715, 36, 549),
        labels = c("Available", "not eaten", "defecated", "respired", "production"),
        unit = "ug/day", format = "pdf")

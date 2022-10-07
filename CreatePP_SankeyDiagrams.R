
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


## For homework
# We measured the amount of dissolved oxygen in both bottles as 6.24 mg O2/L right before we set them out, but we came back a day later, the oxygen concentration in the light bottle was 6.39 mg O2/L and that in the dark bottle was 6.16 mg O2/L
c(6.39, 6.16) - 6.24 # changes in O2, NPP & Ra
0.15 - -0.08 # GPP
SankeyR(input = 6.39, losses = c(0.15, 0.08, 6.16),
        labels = c("GPP", "Ra", "Re", "NPP"),
        unit = "mg O2/L", format = "pdf")

SankeyR(input = 0.23, losses = c(0.15, 0.08),
        labels = c("GPP", "Ra", "NPP"),
        unit = "mg O2/L", format = "pdf")

SankeyR(input = 0.23, losses = c(0.08, 0.15), # C is right
        labels = c("GPP", "Ra", "NPP"),
        unit = "mg O2/L", format = "pdf")

SankeyR(input = c(6.24, 0.15), losses = c(0.08, 6.31),
        labels = c("Dissolved O2", "GPP", "Ra", "NPP"),
        unit = "mg O2/L", format = "pdf")

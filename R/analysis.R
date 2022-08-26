source("R/libraries.R")

grid_london <- EnglandFacets::london_grid
grid_no_london <- EnglandFacets::outside_london_grid

df <- fingertipsR::fingertips_data(
        IndicatorID = 92488,
        AreaTypeID = 402
)

df <- df |> 
        dplyr::rename(
                name = AreaName, 
                code = AreaCode) |> 
        dplyr::mutate(
                name = abbreviate(name, 6))

shp_eng <- EnglandFacets::england_shp

shp_lond <- EnglandFacets::london_shp


england_data <- df |> 
        dplyr::filter(code %in% grid_no_london$code,
                      AreaType == "Counties & UAs (from Apr 2021)",
                      Sex == "Persons")
london_data <- df |> 
        dplyr::filter(code %in% grid_london$code,
                      AreaType == "Counties & UAs (from Apr 2021)",
                      Sex == "Persons")
plot <- EnglandFacets::utla_plot(
        london_data = london_data,
        england_data = england_data,
        london_grid = grid_london,
        england_grid = grid_no_london)

ggplot2::ggsave(plot,
       filename = "report/analysis_map.png",
       height = 13,
       width = 15,
       units = "in",
       dpi = 500)


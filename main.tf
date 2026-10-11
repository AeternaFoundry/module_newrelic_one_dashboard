resource "newrelic_one_dashboard" "one_dashboards" {
  for_each = var.one_dashboards

  name        = each.value.name
  account_id  = each.value.account_id
  description = each.value.description
  permissions = each.value.permissions

  dynamic "page" {
    for_each = each.value.page
    content {
      description = page.value.description
      name        = page.value.name
      dynamic "widget_area" {
        for_each = page.value.widget_area != null ? page.value.widget_area : []
        content {
          dynamic "chart_styles" {
            for_each = widget_area.value.chart_styles != null ? [widget_area.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_area.value.colors != null ? widget_area.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_area.value.column
          dynamic "data_format" {
            for_each = widget_area.value.data_format != null ? widget_area.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_area.value.facet_show_other_series
          height                  = widget_area.value.height
          ignore_time_range       = widget_area.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_area.value.initial_sorting != null ? [widget_area.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_area.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_area.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_area.value.null_values != null ? widget_area.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_area.value.refresh_rate
          row          = widget_area.value.row
          title        = widget_area.value.title
          dynamic "tooltip" {
            for_each = widget_area.value.tooltip != null ? [widget_area.value.tooltip] : []
            content {
              mode = tooltip.value.mode
            }
          }
          dynamic "units" {
            for_each = widget_area.value.units != null ? widget_area.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_area.value.width
          y_axis_left_max = widget_area.value.y_axis_left_max
          y_axis_left_min = widget_area.value.y_axis_left_min
        }
      }
      dynamic "widget_bar" {
        for_each = page.value.widget_bar != null ? page.value.widget_bar : []
        content {
          dynamic "chart_styles" {
            for_each = widget_bar.value.chart_styles != null ? [widget_bar.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_bar.value.colors != null ? widget_bar.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_bar.value.column
          dynamic "data_format" {
            for_each = widget_bar.value.data_format != null ? widget_bar.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series  = widget_bar.value.facet_show_other_series
          filter_current_dashboard = widget_bar.value.filter_current_dashboard
          height                   = widget_bar.value.height
          ignore_time_range        = widget_bar.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_bar.value.initial_sorting != null ? [widget_bar.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled      = widget_bar.value.legend_enabled
          linked_entity_guids = widget_bar.value.linked_entity_guids
          dynamic "nrql_query" {
            for_each = widget_bar.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_bar.value.null_values != null ? widget_bar.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_bar.value.refresh_rate
          row          = widget_bar.value.row
          title        = widget_bar.value.title
          dynamic "units" {
            for_each = widget_bar.value.units != null ? widget_bar.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_bar.value.width
          y_axis_left_max = widget_bar.value.y_axis_left_max
          y_axis_left_min = widget_bar.value.y_axis_left_min
        }
      }
      dynamic "widget_billboard" {
        for_each = page.value.widget_billboard != null ? page.value.widget_billboard : []
        content {
          dynamic "billboard_settings" {
            for_each = widget_billboard.value.billboard_settings != null ? [widget_billboard.value.billboard_settings] : []
            content {
              dynamic "grid_options" {
                for_each = billboard_settings.value.grid_options != null ? [billboard_settings.value.grid_options] : []
                content {
                  columns = grid_options.value.columns
                  label   = grid_options.value.label
                  value   = grid_options.value.value
                }
              }
              dynamic "link" {
                for_each = billboard_settings.value.link != null ? [billboard_settings.value.link] : []
                content {
                  new_tab = link.value.new_tab
                  title   = link.value.title
                  url     = link.value.url
                }
              }
              dynamic "visual" {
                for_each = billboard_settings.value.visual != null ? [billboard_settings.value.visual] : []
                content {
                  alignment = visual.value.alignment
                  display   = visual.value.display
                }
              }
            }
          }
          dynamic "chart_styles" {
            for_each = widget_billboard.value.chart_styles != null ? [widget_billboard.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_billboard.value.colors != null ? widget_billboard.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column   = widget_billboard.value.column
          critical = widget_billboard.value.critical
          dynamic "data_format" {
            for_each = widget_billboard.value.data_format != null ? widget_billboard.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_billboard.value.facet_show_other_series
          height                  = widget_billboard.value.height
          ignore_time_range       = widget_billboard.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_billboard.value.initial_sorting != null ? [widget_billboard.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_billboard.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_billboard.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_billboard.value.null_values != null ? widget_billboard.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_billboard.value.refresh_rate
          row          = widget_billboard.value.row
          title        = widget_billboard.value.title
          dynamic "units" {
            for_each = widget_billboard.value.units != null ? widget_billboard.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          warning         = widget_billboard.value.warning
          width           = widget_billboard.value.width
          y_axis_left_max = widget_billboard.value.y_axis_left_max
          y_axis_left_min = widget_billboard.value.y_axis_left_min
        }
      }
      dynamic "widget_bullet" {
        for_each = page.value.widget_bullet != null ? page.value.widget_bullet : []
        content {
          dynamic "chart_styles" {
            for_each = widget_bullet.value.chart_styles != null ? [widget_bullet.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_bullet.value.colors != null ? widget_bullet.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_bullet.value.column
          dynamic "data_format" {
            for_each = widget_bullet.value.data_format != null ? widget_bullet.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_bullet.value.facet_show_other_series
          height                  = widget_bullet.value.height
          ignore_time_range       = widget_bullet.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_bullet.value.initial_sorting != null ? [widget_bullet.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_bullet.value.legend_enabled
          limit          = widget_bullet.value.limit
          dynamic "nrql_query" {
            for_each = widget_bullet.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_bullet.value.null_values != null ? widget_bullet.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_bullet.value.refresh_rate
          row          = widget_bullet.value.row
          title        = widget_bullet.value.title
          dynamic "units" {
            for_each = widget_bullet.value.units != null ? widget_bullet.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_bullet.value.width
          y_axis_left_max = widget_bullet.value.y_axis_left_max
          y_axis_left_min = widget_bullet.value.y_axis_left_min
        }
      }
      dynamic "widget_funnel" {
        for_each = page.value.widget_funnel != null ? page.value.widget_funnel : []
        content {
          dynamic "chart_styles" {
            for_each = widget_funnel.value.chart_styles != null ? [widget_funnel.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_funnel.value.colors != null ? widget_funnel.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_funnel.value.column
          dynamic "data_format" {
            for_each = widget_funnel.value.data_format != null ? widget_funnel.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_funnel.value.facet_show_other_series
          height                  = widget_funnel.value.height
          ignore_time_range       = widget_funnel.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_funnel.value.initial_sorting != null ? [widget_funnel.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_funnel.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_funnel.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_funnel.value.null_values != null ? widget_funnel.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_funnel.value.refresh_rate
          row          = widget_funnel.value.row
          title        = widget_funnel.value.title
          dynamic "units" {
            for_each = widget_funnel.value.units != null ? widget_funnel.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_funnel.value.width
          y_axis_left_max = widget_funnel.value.y_axis_left_max
          y_axis_left_min = widget_funnel.value.y_axis_left_min
        }
      }
      dynamic "widget_heatmap" {
        for_each = page.value.widget_heatmap != null ? page.value.widget_heatmap : []
        content {
          dynamic "chart_styles" {
            for_each = widget_heatmap.value.chart_styles != null ? [widget_heatmap.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_heatmap.value.colors != null ? widget_heatmap.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_heatmap.value.column
          dynamic "data_format" {
            for_each = widget_heatmap.value.data_format != null ? widget_heatmap.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series  = widget_heatmap.value.facet_show_other_series
          filter_current_dashboard = widget_heatmap.value.filter_current_dashboard
          height                   = widget_heatmap.value.height
          ignore_time_range        = widget_heatmap.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_heatmap.value.initial_sorting != null ? [widget_heatmap.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled      = widget_heatmap.value.legend_enabled
          linked_entity_guids = widget_heatmap.value.linked_entity_guids
          dynamic "nrql_query" {
            for_each = widget_heatmap.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_heatmap.value.null_values != null ? widget_heatmap.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_heatmap.value.refresh_rate
          row          = widget_heatmap.value.row
          title        = widget_heatmap.value.title
          dynamic "units" {
            for_each = widget_heatmap.value.units != null ? widget_heatmap.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_heatmap.value.width
          y_axis_left_max = widget_heatmap.value.y_axis_left_max
          y_axis_left_min = widget_heatmap.value.y_axis_left_min
        }
      }
      dynamic "widget_histogram" {
        for_each = page.value.widget_histogram != null ? page.value.widget_histogram : []
        content {
          dynamic "chart_styles" {
            for_each = widget_histogram.value.chart_styles != null ? [widget_histogram.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_histogram.value.colors != null ? widget_histogram.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_histogram.value.column
          dynamic "data_format" {
            for_each = widget_histogram.value.data_format != null ? widget_histogram.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_histogram.value.facet_show_other_series
          height                  = widget_histogram.value.height
          ignore_time_range       = widget_histogram.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_histogram.value.initial_sorting != null ? [widget_histogram.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_histogram.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_histogram.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_histogram.value.null_values != null ? widget_histogram.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_histogram.value.refresh_rate
          row          = widget_histogram.value.row
          title        = widget_histogram.value.title
          dynamic "units" {
            for_each = widget_histogram.value.units != null ? widget_histogram.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_histogram.value.width
          y_axis_left_max = widget_histogram.value.y_axis_left_max
          y_axis_left_min = widget_histogram.value.y_axis_left_min
        }
      }
      dynamic "widget_json" {
        for_each = page.value.widget_json != null ? page.value.widget_json : []
        content {
          dynamic "chart_styles" {
            for_each = widget_json.value.chart_styles != null ? [widget_json.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_json.value.colors != null ? widget_json.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_json.value.column
          dynamic "data_format" {
            for_each = widget_json.value.data_format != null ? widget_json.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_json.value.facet_show_other_series
          height                  = widget_json.value.height
          ignore_time_range       = widget_json.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_json.value.initial_sorting != null ? [widget_json.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_json.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_json.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_json.value.null_values != null ? widget_json.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_json.value.refresh_rate
          row          = widget_json.value.row
          title        = widget_json.value.title
          dynamic "units" {
            for_each = widget_json.value.units != null ? widget_json.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_json.value.width
          y_axis_left_max = widget_json.value.y_axis_left_max
          y_axis_left_min = widget_json.value.y_axis_left_min
        }
      }
      dynamic "widget_line" {
        for_each = page.value.widget_line != null ? page.value.widget_line : []
        content {
          dynamic "chart_styles" {
            for_each = widget_line.value.chart_styles != null ? [widget_line.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_line.value.colors != null ? widget_line.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_line.value.column
          dynamic "data_format" {
            for_each = widget_line.value.data_format != null ? widget_line.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_line.value.facet_show_other_series
          height                  = widget_line.value.height
          ignore_time_range       = widget_line.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_line.value.initial_sorting != null ? [widget_line.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          is_label_visible = widget_line.value.is_label_visible
          legend_enabled   = widget_line.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_line.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_line.value.null_values != null ? widget_line.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_line.value.refresh_rate
          row          = widget_line.value.row
          dynamic "threshold" {
            for_each = widget_line.value.threshold != null ? widget_line.value.threshold : []
            content {
              from     = threshold.value.from
              name     = threshold.value.name
              severity = threshold.value.severity
              to       = threshold.value.to
            }
          }
          title = widget_line.value.title
          dynamic "tooltip" {
            for_each = widget_line.value.tooltip != null ? [widget_line.value.tooltip] : []
            content {
              mode = tooltip.value.mode
            }
          }
          dynamic "units" {
            for_each = widget_line.value.units != null ? widget_line.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width            = widget_line.value.width
          y_axis_left_max  = widget_line.value.y_axis_left_max
          y_axis_left_min  = widget_line.value.y_axis_left_min
          y_axis_left_zero = widget_line.value.y_axis_left_zero
          dynamic "y_axis_right" {
            for_each = widget_line.value.y_axis_right != null ? [widget_line.value.y_axis_right] : []
            content {
              y_axis_right_max    = y_axis_right.value.y_axis_right_max
              y_axis_right_min    = y_axis_right.value.y_axis_right_min
              y_axis_right_series = y_axis_right.value.y_axis_right_series
              y_axis_right_zero   = y_axis_right.value.y_axis_right_zero
            }
          }
        }
      }
      dynamic "widget_log_table" {
        for_each = page.value.widget_log_table != null ? page.value.widget_log_table : []
        content {
          dynamic "chart_styles" {
            for_each = widget_log_table.value.chart_styles != null ? [widget_log_table.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_log_table.value.colors != null ? widget_log_table.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_log_table.value.column
          dynamic "data_format" {
            for_each = widget_log_table.value.data_format != null ? widget_log_table.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_log_table.value.facet_show_other_series
          height                  = widget_log_table.value.height
          ignore_time_range       = widget_log_table.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_log_table.value.initial_sorting != null ? [widget_log_table.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_log_table.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_log_table.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_log_table.value.null_values != null ? widget_log_table.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_log_table.value.refresh_rate
          row          = widget_log_table.value.row
          title        = widget_log_table.value.title
          dynamic "units" {
            for_each = widget_log_table.value.units != null ? widget_log_table.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_log_table.value.width
          y_axis_left_max = widget_log_table.value.y_axis_left_max
          y_axis_left_min = widget_log_table.value.y_axis_left_min
        }
      }
      dynamic "widget_markdown" {
        for_each = page.value.widget_markdown != null ? page.value.widget_markdown : []
        content {
          dynamic "chart_styles" {
            for_each = widget_markdown.value.chart_styles != null ? [widget_markdown.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_markdown.value.colors != null ? widget_markdown.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_markdown.value.column
          dynamic "data_format" {
            for_each = widget_markdown.value.data_format != null ? widget_markdown.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_markdown.value.facet_show_other_series
          height                  = widget_markdown.value.height
          ignore_time_range       = widget_markdown.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_markdown.value.initial_sorting != null ? [widget_markdown.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_markdown.value.legend_enabled
          dynamic "null_values" {
            for_each = widget_markdown.value.null_values != null ? widget_markdown.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_markdown.value.refresh_rate
          row          = widget_markdown.value.row
          text         = widget_markdown.value.text
          title        = widget_markdown.value.title
          dynamic "units" {
            for_each = widget_markdown.value.units != null ? widget_markdown.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_markdown.value.width
          y_axis_left_max = widget_markdown.value.y_axis_left_max
          y_axis_left_min = widget_markdown.value.y_axis_left_min
        }
      }
      dynamic "widget_pie" {
        for_each = page.value.widget_pie != null ? page.value.widget_pie : []
        content {
          dynamic "chart_styles" {
            for_each = widget_pie.value.chart_styles != null ? [widget_pie.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_pie.value.colors != null ? widget_pie.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_pie.value.column
          dynamic "data_format" {
            for_each = widget_pie.value.data_format != null ? widget_pie.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series  = widget_pie.value.facet_show_other_series
          filter_current_dashboard = widget_pie.value.filter_current_dashboard
          height                   = widget_pie.value.height
          ignore_time_range        = widget_pie.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_pie.value.initial_sorting != null ? [widget_pie.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled      = widget_pie.value.legend_enabled
          linked_entity_guids = widget_pie.value.linked_entity_guids
          dynamic "nrql_query" {
            for_each = widget_pie.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_pie.value.null_values != null ? widget_pie.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_pie.value.refresh_rate
          row          = widget_pie.value.row
          title        = widget_pie.value.title
          dynamic "units" {
            for_each = widget_pie.value.units != null ? widget_pie.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_pie.value.width
          y_axis_left_max = widget_pie.value.y_axis_left_max
          y_axis_left_min = widget_pie.value.y_axis_left_min
        }
      }
      dynamic "widget_stacked_bar" {
        for_each = page.value.widget_stacked_bar != null ? page.value.widget_stacked_bar : []
        content {
          dynamic "chart_styles" {
            for_each = widget_stacked_bar.value.chart_styles != null ? [widget_stacked_bar.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_stacked_bar.value.colors != null ? widget_stacked_bar.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_stacked_bar.value.column
          dynamic "data_format" {
            for_each = widget_stacked_bar.value.data_format != null ? widget_stacked_bar.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series = widget_stacked_bar.value.facet_show_other_series
          height                  = widget_stacked_bar.value.height
          ignore_time_range       = widget_stacked_bar.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_stacked_bar.value.initial_sorting != null ? [widget_stacked_bar.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled = widget_stacked_bar.value.legend_enabled
          dynamic "nrql_query" {
            for_each = widget_stacked_bar.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_stacked_bar.value.null_values != null ? widget_stacked_bar.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_stacked_bar.value.refresh_rate
          row          = widget_stacked_bar.value.row
          title        = widget_stacked_bar.value.title
          dynamic "tooltip" {
            for_each = widget_stacked_bar.value.tooltip != null ? [widget_stacked_bar.value.tooltip] : []
            content {
              mode = tooltip.value.mode
            }
          }
          dynamic "units" {
            for_each = widget_stacked_bar.value.units != null ? widget_stacked_bar.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_stacked_bar.value.width
          y_axis_left_max = widget_stacked_bar.value.y_axis_left_max
          y_axis_left_min = widget_stacked_bar.value.y_axis_left_min
        }
      }
      dynamic "widget_table" {
        for_each = page.value.widget_table != null ? page.value.widget_table : []
        content {
          dynamic "chart_styles" {
            for_each = widget_table.value.chart_styles != null ? [widget_table.value.chart_styles] : []
            content {
              dynamic "gradient" {
                for_each = chart_styles.value.gradient != null ? [chart_styles.value.gradient] : []
                content {
                  enabled = gradient.value.enabled
                }
              }
              line_interpolation = chart_styles.value.line_interpolation
            }
          }
          dynamic "colors" {
            for_each = widget_table.value.colors != null ? widget_table.value.colors : []
            content {
              color = colors.value.color
              dynamic "series_overrides" {
                for_each = colors.value.series_overrides != null ? colors.value.series_overrides : []
                content {
                  color       = series_overrides.value.color
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          column = widget_table.value.column
          dynamic "data_format" {
            for_each = widget_table.value.data_format != null ? widget_table.value.data_format : []
            content {
              format    = data_format.value.format
              name      = data_format.value.name
              precision = data_format.value.precision
              type      = data_format.value.type
            }
          }
          facet_show_other_series  = widget_table.value.facet_show_other_series
          filter_current_dashboard = widget_table.value.filter_current_dashboard
          height                   = widget_table.value.height
          ignore_time_range        = widget_table.value.ignore_time_range
          dynamic "initial_sorting" {
            for_each = widget_table.value.initial_sorting != null ? [widget_table.value.initial_sorting] : []
            content {
              direction = initial_sorting.value.direction
              name      = initial_sorting.value.name
            }
          }
          legend_enabled      = widget_table.value.legend_enabled
          linked_entity_guids = widget_table.value.linked_entity_guids
          dynamic "nrql_query" {
            for_each = widget_table.value.nrql_query
            content {
              account_id = nrql_query.value.account_id
              query      = nrql_query.value.query
            }
          }
          dynamic "null_values" {
            for_each = widget_table.value.null_values != null ? widget_table.value.null_values : []
            content {
              null_value = null_values.value.null_value
              dynamic "series_overrides" {
                for_each = null_values.value.series_overrides != null ? null_values.value.series_overrides : []
                content {
                  null_value  = series_overrides.value.null_value
                  series_name = series_overrides.value.series_name
                }
              }
            }
          }
          refresh_rate = widget_table.value.refresh_rate
          row          = widget_table.value.row
          dynamic "threshold" {
            for_each = widget_table.value.threshold != null ? widget_table.value.threshold : []
            content {
              column_name = threshold.value.column_name
              from        = threshold.value.from
              severity    = threshold.value.severity
              to          = threshold.value.to
            }
          }
          title = widget_table.value.title
          dynamic "units" {
            for_each = widget_table.value.units != null ? widget_table.value.units : []
            content {
              dynamic "series_overrides" {
                for_each = units.value.series_overrides != null ? units.value.series_overrides : []
                content {
                  series_name = series_overrides.value.series_name
                  unit        = series_overrides.value.unit
                }
              }
              unit = units.value.unit
            }
          }
          width           = widget_table.value.width
          y_axis_left_max = widget_table.value.y_axis_left_max
          y_axis_left_min = widget_table.value.y_axis_left_min
        }
      }
    }
  }

  dynamic "variable" {
    for_each = each.value.variable != null ? each.value.variable : []
    content {
      default_values     = variable.value.default_values
      is_multi_selection = variable.value.is_multi_selection
      dynamic "item" {
        for_each = variable.value.item != null ? variable.value.item : []
        content {
          title = item.value.title
          value = item.value.value
        }
      }
      name = variable.value.name
      dynamic "nrql_query" {
        for_each = variable.value.nrql_query != null ? [variable.value.nrql_query] : []
        content {
          account_ids = nrql_query.value.account_ids
          query       = nrql_query.value.query
        }
      }
      dynamic "options" {
        for_each = variable.value.options != null ? variable.value.options : []
        content {
          excluded          = options.value.excluded
          ignore_time_range = options.value.ignore_time_range
          show_apply_action = options.value.show_apply_action
        }
      }
      replacement_strategy = variable.value.replacement_strategy
      title                = variable.value.title
      type                 = variable.value.type
    }
  }
}


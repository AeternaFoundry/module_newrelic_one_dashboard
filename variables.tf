variable "one_dashboards" {
  description = <<EOT
Map of one_dashboards, attributes below
Required:
    - name
    - page (block):
        - description (optional)
        - name (required)
        - widget_area (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - tooltip (optional, block):
                - mode (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_bar (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - filter_current_dashboard (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - linked_entity_guids (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_billboard (optional, block):
            - billboard_settings (optional, block):
                - grid_options (optional, block):
                    - columns (optional)
                    - label (optional)
                    - value (optional)
                - link (optional, block):
                    - new_tab (optional)
                    - title (optional)
                    - url (optional)
                - visual (optional, block):
                    - alignment (optional)
                    - display (optional)
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - critical (optional)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - warning (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_bullet (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - limit (required)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_funnel (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_heatmap (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - filter_current_dashboard (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - linked_entity_guids (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_histogram (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_json (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_line (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - is_label_visible (optional)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - threshold (optional, block):
                - from (optional)
                - name (optional)
                - severity (optional)
                - to (optional)
            - title (required)
            - tooltip (optional, block):
                - mode (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
            - y_axis_left_zero (optional)
            - y_axis_right (optional, block):
                - y_axis_right_max (optional)
                - y_axis_right_min (optional)
                - y_axis_right_series (optional)
                - y_axis_right_zero (optional)
        - widget_log_table (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_markdown (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - text (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_pie (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - filter_current_dashboard (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - linked_entity_guids (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_stacked_bar (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - title (required)
            - tooltip (optional, block):
                - mode (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
        - widget_table (optional, block):
            - chart_styles (optional, block):
                - gradient (optional, block):
                    - enabled (required)
                - line_interpolation (optional)
            - colors (optional, block):
                - color (optional)
                - series_overrides (optional, block):
                    - color (optional)
                    - series_name (optional)
            - column (required)
            - data_format (optional, block):
                - format (optional)
                - name (required)
                - precision (optional)
                - type (required)
            - facet_show_other_series (optional)
            - filter_current_dashboard (optional)
            - height (optional)
            - ignore_time_range (optional)
            - initial_sorting (optional, block):
                - direction (required)
                - name (required)
            - legend_enabled (optional)
            - linked_entity_guids (optional)
            - nrql_query (required, block):
                - account_id (optional)
                - query (required)
            - null_values (optional, block):
                - null_value (optional)
                - series_overrides (optional, block):
                    - null_value (optional)
                    - series_name (optional)
            - refresh_rate (optional)
            - row (required)
            - threshold (optional, block):
                - column_name (optional)
                - from (optional)
                - severity (optional)
                - to (optional)
            - title (required)
            - units (optional, block):
                - series_overrides (optional, block):
                    - series_name (optional)
                    - unit (optional)
                - unit (optional)
            - width (optional)
            - y_axis_left_max (optional)
            - y_axis_left_min (optional)
Optional:
    - account_id
    - description
    - permissions
    - variable (block):
        - default_values (optional)
        - is_multi_selection (optional)
        - item (optional, block):
            - title (optional)
            - value (required)
        - name (required)
        - nrql_query (optional, block):
            - account_ids (optional)
            - query (required)
        - options (optional, block):
            - excluded (optional)
            - ignore_time_range (optional)
            - show_apply_action (optional)
        - replacement_strategy (required)
        - title (required)
        - type (required)
EOT

  type = map(object({
    name        = string
    account_id  = optional(number)
    description = optional(string)
    permissions = optional(string)
    page = list(object({
      description = optional(string)
      name        = string
      widget_area = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        tooltip = optional(object({
          mode = string
        }))
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_bar = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series  = optional(bool)
        filter_current_dashboard = optional(bool)
        height                   = optional(number)
        ignore_time_range        = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled      = optional(bool)
        linked_entity_guids = optional(list(string))
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_billboard = optional(list(object({
        billboard_settings = optional(object({
          grid_options = optional(object({
            columns = optional(number)
            label   = optional(number)
            value   = optional(number)
          }))
          link = optional(object({
            new_tab = optional(bool)
            title   = optional(string)
            url     = optional(string)
          }))
          visual = optional(object({
            alignment = optional(string)
            display   = optional(string)
          }))
        }))
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column   = number
        critical = optional(string)
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        warning         = optional(string)
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_bullet = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        limit          = number
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_funnel = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_heatmap = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series  = optional(bool)
        filter_current_dashboard = optional(bool)
        height                   = optional(number)
        ignore_time_range        = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled      = optional(bool)
        linked_entity_guids = optional(list(string))
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_histogram = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_json = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_line = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        is_label_visible = optional(bool)
        legend_enabled   = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        threshold = optional(list(object({
          from     = optional(string)
          name     = optional(string)
          severity = optional(string)
          to       = optional(string)
        })))
        title = string
        tooltip = optional(object({
          mode = string
        }))
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width            = optional(number)
        y_axis_left_max  = optional(number)
        y_axis_left_min  = optional(number)
        y_axis_left_zero = optional(bool)
        y_axis_right = optional(object({
          y_axis_right_max    = optional(number)
          y_axis_right_min    = optional(number)
          y_axis_right_series = optional(set(string))
          y_axis_right_zero   = optional(bool)
        }))
      })))
      widget_log_table = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_markdown = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        text         = string
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_pie = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series  = optional(bool)
        filter_current_dashboard = optional(bool)
        height                   = optional(number)
        ignore_time_range        = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled      = optional(bool)
        linked_entity_guids = optional(list(string))
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_stacked_bar = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series = optional(bool)
        height                  = optional(number)
        ignore_time_range       = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled = optional(bool)
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        title        = string
        tooltip = optional(object({
          mode = string
        }))
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
      widget_table = optional(list(object({
        chart_styles = optional(object({
          gradient = optional(object({
            enabled = bool
          }))
          line_interpolation = optional(string)
        }))
        colors = optional(list(object({
          color = optional(string)
          series_overrides = optional(list(object({
            color       = optional(string)
            series_name = optional(string)
          })))
        })))
        column = number
        data_format = optional(list(object({
          format    = optional(string)
          name      = string
          precision = optional(number)
          type      = string
        })))
        facet_show_other_series  = optional(bool)
        filter_current_dashboard = optional(bool)
        height                   = optional(number)
        ignore_time_range        = optional(bool)
        initial_sorting = optional(object({
          direction = string
          name      = string
        }))
        legend_enabled      = optional(bool)
        linked_entity_guids = optional(list(string))
        nrql_query = list(object({
          account_id = optional(string)
          query      = string
        }))
        null_values = optional(list(object({
          null_value = optional(string)
          series_overrides = optional(list(object({
            null_value  = optional(string)
            series_name = optional(string)
          })))
        })))
        refresh_rate = optional(string)
        row          = number
        threshold = optional(list(object({
          column_name = optional(string)
          from        = optional(string)
          severity    = optional(string)
          to          = optional(string)
        })))
        title = string
        units = optional(list(object({
          series_overrides = optional(list(object({
            series_name = optional(string)
            unit        = optional(string)
          })))
          unit = optional(string)
        })))
        width           = optional(number)
        y_axis_left_max = optional(number)
        y_axis_left_min = optional(number)
      })))
    }))
    variable = optional(list(object({
      default_values     = optional(list(string))
      is_multi_selection = optional(bool)
      item = optional(list(object({
        title = optional(string)
        value = string
      })))
      name = string
      nrql_query = optional(object({
        account_ids = optional(list(number))
        query       = string
      }))
      options = optional(list(object({
        excluded          = optional(bool)
        ignore_time_range = optional(bool)
        show_apply_action = optional(bool)
      })))
      replacement_strategy = string
      title                = string
      type                 = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        length(v.page) >= 1
      )
    ])
    error_message = "Each page list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_area == null || alltrue([for item in item.widget_area : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_bar == null || alltrue([for item in item.widget_bar : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_billboard == null || alltrue([for item in item.widget_billboard : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_bullet == null || alltrue([for item in item.widget_bullet : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_funnel == null || alltrue([for item in item.widget_funnel : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_heatmap == null || alltrue([for item in item.widget_heatmap : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_histogram == null || alltrue([for item in item.widget_histogram : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_json == null || alltrue([for item in item.widget_json : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_line == null || alltrue([for item in item.widget_line : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_log_table == null || alltrue([for item in item.widget_log_table : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_pie == null || alltrue([for item in item.widget_pie : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_stacked_bar == null || alltrue([for item in item.widget_stacked_bar : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        alltrue([for item in v.page : (item.widget_table == null || alltrue([for item in item.widget_table : (length(item.nrql_query) >= 1)]))])
      )
    ])
    error_message = "Each nrql_query list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        v.permissions == null || (contains(["private", "public_read_only", "public_read_write"], v.permissions))
      )
    ])
    error_message = "must be one of: \"private\", \"public_read_only\", \"public_read_write\""
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        v.variable == null || alltrue([for item in v.variable : (contains(["default", "identifier", "number", "string"], item.replacement_strategy))])
      )
    ])
    error_message = "must be one of: \"default\", \"identifier\", \"number\", \"string\""
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboards : (
        v.variable == null || alltrue([for item in v.variable : (contains(["enum", "nrql", "string"], item.type))])
      )
    ])
    error_message = "must be one of: \"enum\", \"nrql\", \"string\""
  }
}


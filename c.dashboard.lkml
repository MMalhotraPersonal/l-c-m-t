- dashboard: c1__cohort_insights_for_segments
  title: C1 - Cohort Insights for Segments
  layout: newspaper
  elements:
  - title: Comeback Rate
    name: Comeback Rate

    explore: standard_model
    type: looker_line
    fields: [c_transactionsummary.buyer_count, c_customersummary.last_transaction_interval,
      cohort.campaign_segment_name]
    pivots: [cohort.campaign_segment_name]
    filters:
      c_customersummary.last_transaction_interval: "-One Time Buyer,-Non Buyer,-NA\
        \ - High Volume Buyer - 10k+ transactions,-Unidentified"
    sorts: [c_customersummary.last_transaction_interval, cohort.campaign_segment_name]
    limit: 500
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 93
    col: 0
    width: 13
    height: 8
  - title: AOV and Revenue per Customer
    name: AOV and Revenue per Customer

    explore: standard_model
    type: looker_column
    fields: [c_transactionsummary.aov, c_transactionsummary.revenue_per_customer,
      cohort.campaign_segment_name]
    sorts: [c_transactionsummary.aov desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: "$###,##0"
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 7
    col: 0
    width: 13
    height: 10
  - title: Last Transaction Product Categories for Segments
    name: Last Transaction Product Categories for Segments

    explore: standard_model
    type: looker_column
    fields: [c_transactionsummary.buyer_count, c_productcategorysummary_customersummary_lasttransaction.level1,
      cohort.campaign_segment_name]
    pivots: [c_productcategorysummary_customersummary_lasttransaction.level1]
    filters:
      c_productcategorysummary_customersummary_lasttransaction.level1: "-NULL"
    sorts: [c_transactionsummary.buyer_count desc 0, c_productcategorysummary_customersummary_lasttransaction.level1]
    limit: 500
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 114
    col: 12
    width: 12
    height: 13
  - title: Product Categories per Segment
    name: Product Categories per Segment

    explore: standard_model
    type: looker_column
    fields: [c_transactionsummary.buyer_count, c_productcategorysummary.level1, cohort.campaign_segment_name]
    pivots: [c_productcategorysummary.level1]
    filters:
      c_productcategorysummary.level1: "-NULL"
    sorts: [c_transactionsummary.buyer_count desc 0, c_productcategorysummary.level1]
    limit: 500
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 114
    col: 0
    width: 12
    height: 13
  - title: Segments by Store State
    name: Segments by Store State

    explore: standard_model
    type: sankey
    fields: [cohort.campaign_segment_name, c_organizationsummary.state, c_transactionsummary.buyer_count]
    filters:
      c_organizationsummary.state: "-NULL"
    sorts: [c_transactionsummary.buyer_count desc]
    limit: 30
    label_type: name_value
    show_null_points: true
    series_types: {}
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 127
    col: 0
    width: 24
    height: 10
  - title: Transaction Count per Segment
    name: Transaction Count per Segment

    explore: standard_model
    type: looker_column
    fields: [c_transactionsummary.buyer_count, c_customersummary.transaction_count_lifetime,
      cohort.campaign_segment_name]
    pivots: [cohort.campaign_segment_name]
    filters:
      c_customersummary.transaction_count_lifetime: "-0,-NA - High Volume Buyer -\
        \ 10k+ transactions,-Unidentified"
    sorts: [c_customersummary.transaction_count_lifetime, cohort.campaign_segment_name]
    limit: 500
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: right, showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: pivot
    stacking: ''
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 17
    col: 0
    width: 13
    height: 12
  - title: Segments by Category Count
    name: Segments by Category Count

    explore: standard_model
    type: looker_donut_multiples
    fields: [c_customersummary.all_individuals_count, c_customersummary.category_count,
      cohort.campaign_segment_name]
    pivots: [c_customersummary.category_count]
    filters:
      c_customersummary.category_count: "-NA - High Volume Buyer - 10k+ transactions,-Unidentified,-0,-Non\
        \ Buyer"
    sorts: [c_customersummary.all_individuals_count desc 0, c_customersummary.category_count]
    limit: 500
    show_value_labels: true
    font_size: 9
    charts_across: 4
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: "$###,##0"
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 101
    col: 0
    width: 24
    height: 10
  - title: Segments by Gender
    name: Segments by Gender

    explore: standard_model
    type: looker_donut_multiples
    fields: [cohort.campaign_segment_name, c_transactionsummary.buyer_count, c_customersummary.gender]
    pivots: [c_customersummary.gender]
    filters:
      c_customersummary.gender: "-Unidentified,-Unknown,-Neutral"
    sorts: [c_transactionsummary.buyer_count desc 0, c_customersummary.gender]
    limit: 500
    show_value_labels: true
    font_size: 11
    charts_across: 2
    hide_legend: false
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    series_types: {}
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 7
    col: 13
    width: 11
    height: 10
  - name: <font color="#5a1038" size="5"><center>Cohort Overview</font>
    type: text
    title_text: <font color="#5a1038" size="5"><center>Cohort Overview</font>
    subtitle_text: 'Tip: Analyze 4 or less segments in this dashboard for the best
      experience.'
    row: 4
    col: 0
    width: 24
    height: 3
  - name: <font color="#5a1038" size="5"><center>Product & Store Performance</font>
    type: text
    title_text: <font color="#5a1038" size="5"><center>Product & Store Performance</font>
    row: 111
    col: 0
    width: 24
    height: 3
  - name: <font color="#5a1038" size="5"><center>Buying Behavior</font>
    type: text
    title_text: <font color="#5a1038" size="5"><center>Buying Behavior</font>
    row: 90
    col: 0
    width: 24
    height: 3
  - title: Revenue and Buyer Count Evolution
    name: Revenue and Buyer Count Evolution

    explore: standard_model
    type: looker_area
    fields: [c_transactionsummary.transaction_date_month, c_transactionsummary.total_revenue,
      c_transactionsummary.buyer_count, cohort.campaign_segment_name]
    pivots: [cohort.campaign_segment_name]
    fill_fields: [c_transactionsummary.transaction_date_month]
    filters:
      c_transactionsummary.transaction_date_month: 24 months ago for 24 months
    sorts: [c_transactionsummary.transaction_date_month, cohort.campaign_segment_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Transaction Calendar Months
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: pivot
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [c_transactionsummary.aov, c_transactionsummary.total_margin]
    hide_legend: true
    legend_position: center
    trellis_rows: 2
    series_types: {}
    point_style: none
    series_labels: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    ordering: none
    show_null_labels: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 47
    col: 0
    width: 24
    height: 16
  - name: <font color="#5a1038" size="5"><center>Tracking Over Time</font>
    type: text
    title_text: <font color="#5a1038" size="5"><center>Tracking Over Time</font>
    row: 44
    col: 0
    width: 24
    height: 3
  - title: All Customers by Channel
    name: All Customers by Channel

    explore: standard_model
    type: looker_column
    fields: [c_organizationsummary.type, c_transactionsummary.buyer_count, c_transactionsummary.transaction_date_month]
    pivots: [c_organizationsummary.type]
    fill_fields: [c_transactionsummary.transaction_date_month]
    filters:
      c_organizationsummary.type: "-Other,-NULL"
      c_transactionsummary.transaction_date_date: 12 months
    sorts: [c_organizationsummary.type, c_transactionsummary.transaction_date_month
        desc]
    limit: 500
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    show_null_points: true
    interpolation: linear
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 81
    col: 13
    width: 11
    height: 9
  - title: Single vs Omnichannel Distribution
    name: Single vs Omnichannel Distribution

    explore: standard_model
    type: looker_donut_multiples
    fields: [c_transactionsummary.buyer_count, c_customersummary.sales_channel_count,
      cohort.campaign_segment_name]
    pivots: [c_customersummary.sales_channel_count]
    filters:
      c_customersummary.sales_channel_count: '1,2'
    sorts: [c_transactionsummary.buyer_count desc 0, c_customersummary.sales_channel_count]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 8
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    show_null_points: true
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 93
    col: 13
    width: 11
    height: 8
  - title: Days Since Last Transaction per Segment
    name: Days Since Last Transaction per Segment

    explore: standard_model
    type: looker_column
    fields: [c_customersummary.days_since_last_transaction_group, c_transactionsummary.buyer_count,
      cohort.campaign_segment_name]
    pivots: [c_customersummary.days_since_last_transaction_group]
    filters:
      c_customersummary.days_since_last_transaction_group: "-NA - High Volume Buyer\
        \ - 10k+ transactions,-Non Buyer,-Unidentified"
    sorts: [c_transactionsummary.buyer_count desc 0, c_customersummary.days_since_last_transaction_group]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 81
    col: 0
    width: 13
    height: 9
  - title: Customers by Revenue Segment L12M
    name: Customers by Revenue Segment L12M

    explore: standard_model
    type: looker_column
    fields: [c_customersummary.revenue_segment_last_12_months, cohort.campaign_segment_name,
      c_transactionsummary.buyer_count]
    pivots: [c_customersummary.revenue_segment_last_12_months]
    filters:
      c_customersummary.revenue_segment_last_12_months: "-NA - High Volume Buyer -\
        \ 10k+ transactions,-Unidentified"
      c_transactionsummary.transaction_date_date: 12 months
    sorts: [c_customersummary.revenue_segment_last_12_months, cohort.campaign_segment_name]
    limit: 500
    column_limit: 50
    total: true
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: left, series: [{axisId: of_non_buyers,
            id: of_non_buyers, name: "% of Non Buyers"}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Row Total - c_customersummary.all_individuals_count]
    legend_position: center
    label_value_format: ''
    series_types:
      of_non_buyer_in_last_12_months: scatter
      in_percentage: scatter
      of_total_segment: scatter
      of_non_buyers: scatter
    point_style: circle
    series_labels:
      non_buyers_in_the_last_12_months: Non Buyers in the Last 12M
      of_total_segment: "% of Total Segment"
      revenue_lost_in_the_last_12_months: Revenue Lost in Last 12M
      1 - High Value - c_customersummary.all_individuals_count: High Value L12M
      2 - Medium Value - c_customersummary.all_individuals_count: Medium Value L12M
      3 - Low Value - c_customersummary.all_individuals_count: Low Value L12M
      Non Buyer - c_customersummary.all_individuals_count: Non Buyer L12M
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    label_rotation: 0
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    hidden_fields: [non_buyers_in_the_last_12_months]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 17
    col: 13
    width: 11
    height: 12
  - title: "#1) Total Revenue YTD"
    name: "#1) Total Revenue YTD"

    explore: standard_model
    type: single_value
    fields: [c_transactionsummary.total_revenue, c_transactionsummary.transaction_date_year,
      cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    pivots: [c_transactionsummary.transaction_date_year]
    fill_fields: [c_transactionsummary.transaction_date_year]
    filters:
      c_transactionsummary.transaction_date_ytd: 'Yes'
      c_transactionsummary.transaction_date_month: 24 months
    sorts: [c_transactionsummary.transaction_date_year desc 0, c_transactionsummary.revenue_per_customer
        desc 3]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{table_calculation: change, label: "% Change", expression: "(pivot_index(${c_transactionsummary.total_revenue},1)-pivot_index(${c_transactionsummary.total_revenue},2))/pivot_index(${c_transactionsummary.total_revenue},2)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: supermeasure,
        _type_hint: number}, {table_calculation: segment_1, label: Segment 1, expression: row()=1,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: '[>=1000000]$#,##0.0,,"M";$#,##0'
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 35
    col: 16
    width: 4
    height: 3
  - title: Revenue Trend Segments
    name: Revenue Trend Segments

    explore: standard_model
    type: looker_column
    fields: [c_customersummary.revenue_trend_segment, c_transactionsummary.buyer_count,
      cohort.campaign_segment_name]
    pivots: [c_customersummary.revenue_trend_segment]
    filters:
      c_customersummary.revenue_trend_segment: "-Non Buyer,-NA - High Volume Buyer\
        \ - 10k+ transactions,-Unidentified"
    sorts: [c_transactionsummary.buyer_count desc 0, c_customersummary.revenue_trend_segment]
    limit: 500
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 63
    col: 0
    width: 24
    height: 9
  - title: "#2) Total Revenue YTD"
    name: "#2) Total Revenue YTD"

    explore: standard_model
    type: single_value
    fields: [cohort.campaign_segment_name, c_transactionsummary.total_revenue, c_transactionsummary.revenue_per_customer,
      c_transactionsummary.transaction_date_year]
    pivots: [c_transactionsummary.transaction_date_year]
    fill_fields: [c_transactionsummary.transaction_date_year]
    filters:
      c_transactionsummary.transaction_date_ytd: 'Yes'
      c_transactionsummary.transaction_date_month: 24 months
    sorts: [c_transactionsummary.transaction_date_year desc 0, c_transactionsummary.revenue_per_customer
        desc 3]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{table_calculation: segment_2, label: Segment 2, expression: row()=2,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}, {table_calculation: change, label: "% Change", expression: "(pivot_index(${c_transactionsummary.total_revenue},1)-pivot_index(${c_transactionsummary.total_revenue},2))/pivot_index(${c_transactionsummary.total_revenue},2)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: supermeasure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: '[>=1000000]$#,##0.0,,"M";$#,##0'
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [cohort.campaign_segment_name]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 38
    col: 16
    width: 4
    height: 3
  - title: "#3) Total Revenue YTD"
    name: "#3) Total Revenue YTD"

    explore: standard_model
    type: single_value
    fields: [c_transactionsummary.total_revenue, c_transactionsummary.transaction_date_year,
      cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    pivots: [c_transactionsummary.transaction_date_year]
    fill_fields: [c_transactionsummary.transaction_date_year]
    filters:
      c_transactionsummary.transaction_date_ytd: 'Yes'
      c_transactionsummary.transaction_date_month: 24 months
    sorts: [c_transactionsummary.transaction_date_year desc 0, c_transactionsummary.revenue_per_customer
        desc 3]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{table_calculation: change, label: "% Change", expression: "(pivot_index(${c_transactionsummary.total_revenue},1)-pivot_index(${c_transactionsummary.total_revenue},2))/pivot_index(${c_transactionsummary.total_revenue},2)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: supermeasure,
        _type_hint: number}, {table_calculation: segment_3, label: Segment 3, expression: row()=3,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: '[>=1000000]$#,##0.0,,"M";$#,##0'
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2, segment_3]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 41
    col: 16
    width: 4
    height: 3
  - title: "#1) Segment Name"
    name: "#1) Segment Name"

    explore: standard_model
    type: single_value
    fields: [cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer,
      c_transactionsummary.transaction_date_year]
    pivots: [c_transactionsummary.transaction_date_year]
    fill_fields: [c_transactionsummary.transaction_date_year]
    filters:
      c_transactionsummary.transaction_date_ytd: 'Yes'
      c_transactionsummary.transaction_date_month: 24 months
    sorts: [c_transactionsummary.transaction_date_year desc 0, c_transactionsummary.revenue_per_customer
        desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: segment_1, label: Segment 1, expression: row()=1,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    custom_color: "#5D5380"
    show_single_value_title: false
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2, segment_3, segment_4]
    up_color: "#8dd3c7"
    down_color: "#ffed6f"
    total_color: "#bebada"
    title_hidden: true
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 35
    col: 0
    width: 12
    height: 3
  - name: <font color="#5D5380" size="5"><center>Buyer Count</font>
    type: text
    title_text: <font color="#5D5380" size="5"><center>Buyer Count</font>
    subtitle_text: ''
    row: 32
    col: 12
    width: 4
    height: 3
  - name: <font color="#5a1038" size="5"><center>Top 3 Segments </font>
    type: text
    title_text: <font color="#5a1038" size="5"><center>Top 3 Segments </font>
    subtitle_text: by Revenue per Customer - YTD
    row: 32
    col: 0
    width: 12
    height: 3
  - name: <font color="#5D5380" size="5"><center>Total Revenue YTD</font>
    type: text
    title_text: <font color="#5D5380" size="5"><center>Total Revenue YTD</font>
    subtitle_text: "% YoY Change"
    row: 32
    col: 16
    width: 4
    height: 3
  - title: "#1) Buyer Count YTD"
    name: "#1) Buyer Count YTD"

    explore: standard_model
    type: single_value
    fields: [c_transactionsummary.buyer_count, cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    sorts: [c_transactionsummary.revenue_per_customer desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: segment_1, label: Segment 1, expression: row()=1,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: '[>=1000000]#,##0.0,,"M";#,##0'
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 35
    col: 12
    width: 4
    height: 3
  - title: "#3) Segment Name"
    name: "#3) Segment Name"

    explore: standard_model
    type: single_value
    fields: [c_transactionsummary.transaction_date_year, cohort.campaign_segment_name,
      c_transactionsummary.revenue_per_customer]
    pivots: [c_transactionsummary.transaction_date_year]
    fill_fields: [c_transactionsummary.transaction_date_year]
    filters:
      c_transactionsummary.transaction_date_ytd: 'Yes'
      c_transactionsummary.transaction_date_month: 24 months
    sorts: [c_transactionsummary.transaction_date_year desc 0, c_transactionsummary.revenue_per_customer
        desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: segment_3, label: Segment 3, expression: row()=3,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    custom_color: "#5D5380"
    show_single_value_title: false
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2, segment_3, segment_4]
    up_color: "#8dd3c7"
    down_color: "#ffed6f"
    total_color: "#bebada"
    title_hidden: true
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 41
    col: 0
    width: 12
    height: 3
  - title: "#2) Segment Name"
    name: "#2) Segment Name"

    explore: standard_model
    type: single_value
    fields: [c_transactionsummary.transaction_date_year, cohort.campaign_segment_name,
      c_transactionsummary.revenue_per_customer]
    pivots: [c_transactionsummary.transaction_date_year]
    fill_fields: [c_transactionsummary.transaction_date_year]
    filters:
      c_transactionsummary.transaction_date_ytd: 'Yes'
      c_transactionsummary.transaction_date_month: 24 months
    sorts: [c_transactionsummary.transaction_date_year desc 0, c_transactionsummary.revenue_per_customer
        desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: segment_2, label: Segment 2, expression: row()=2,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    custom_color: "#5D5380"
    show_single_value_title: false
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2, segment_3, segment_4]
    up_color: "#8dd3c7"
    down_color: "#ffed6f"
    total_color: "#bebada"
    title_hidden: true
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 38
    col: 0
    width: 12
    height: 3
  - title: "#2) Buyer Count YTD"
    name: "#2) Buyer Count YTD"

    explore: standard_model
    type: single_value
    fields: [cohort.campaign_segment_name, c_transactionsummary.buyer_count, c_transactionsummary.revenue_per_customer]
    sorts: [c_transactionsummary.revenue_per_customer desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: segment_2, label: Segment 2, expression: row()=2,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: '[>=1000000]#,##0.0,,"M";#,##0'
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 38
    col: 12
    width: 4
    height: 3
  - title: "#3) Buyer Count YTD"
    name: "#3) Buyer Count YTD"

    explore: standard_model
    type: single_value
    fields: [cohort.campaign_segment_name, c_transactionsummary.buyer_count, c_transactionsummary.revenue_per_customer]
    sorts: [c_transactionsummary.revenue_per_customer desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: segment_3, label: Segment 3, expression: row()=3,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: '[>=1000000]#,##0.0,,"M";#,##0'
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2, segment_3]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 41
    col: 12
    width: 4
    height: 3
  - name: <font color="#5D5380" size="5"><center>% of One Time Buyers</font>
    type: text
    title_text: <font color="#5D5380" size="5"><center>% of One Time Buyers</font>
    subtitle_text: ''
    row: 32
    col: 20
    width: 4
    height: 3
  - title: "#1) One Time Buyers"
    name: "#1) One Time Buyers"

    explore: standard_model
    type: single_value
    fields: [c_transactionsummary.buyer_count, c_customersummary.transaction_count_lifetime,
      cohort.campaign_segment_name, c_transactionsummary.revenue_per_customer]
    pivots: [c_customersummary.transaction_count_lifetime]
    sorts: [c_customersummary.transaction_count_lifetime 0, c_transactionsummary.revenue_per_customer
        desc 11]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{table_calculation: of_one_time_buyers, label: "% of One Time\
          \ Buyers", expression: 'pivot_where(${c_customersummary.transaction_count_lifetime}="1",${c_transactionsummary.buyer_count})/sum(pivot_row(${c_transactionsummary.buyer_count}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: supermeasure,
        _type_hint: number}, {table_calculation: segment_1, label: Segment 1, expression: row()=1,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [c_transactionsummary.buyer_count, cohort.campaign_segment_name,
      c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 35
    col: 20
    width: 4
    height: 3
  - title: "#2) One Time Buyers"
    name: "#2) One Time Buyers"

    explore: standard_model
    type: single_value
    fields: [cohort.campaign_segment_name, c_transactionsummary.buyer_count, c_transactionsummary.revenue_per_customer,
      c_customersummary.transaction_count_lifetime]
    pivots: [c_customersummary.transaction_count_lifetime]
    sorts: [c_customersummary.transaction_count_lifetime 0, c_transactionsummary.revenue_per_customer
        desc 11]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{table_calculation: segment_2, label: Segment 2, expression: row()=2,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}, {table_calculation: of_one_time_buyers, label: "% of One\
          \ Time Buyers", expression: 'pivot_where(${c_customersummary.transaction_count_lifetime}="1",${c_transactionsummary.buyer_count})/sum(pivot_row(${c_transactionsummary.buyer_count}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: supermeasure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [c_transactionsummary.buyer_count, cohort.campaign_segment_name,
      c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_2]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 38
    col: 20
    width: 4
    height: 3
  - title: "#3) One Time Buyers"
    name: "#3) One Time Buyers"

    explore: standard_model
    type: single_value
    fields: [cohort.campaign_segment_name, c_transactionsummary.buyer_count, c_customersummary.transaction_count_lifetime,
      c_transactionsummary.revenue_per_customer]
    pivots: [c_customersummary.transaction_count_lifetime]
    sorts: [c_customersummary.transaction_count_lifetime 0, c_transactionsummary.revenue_per_customer
        desc 11]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{table_calculation: segment_3, label: Segment 3, expression: row()=3,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}, {table_calculation: of_one_time_buyers, label: "% of One\
          \ Time Buyers", expression: 'pivot_where(${c_customersummary.transaction_count_lifetime}="1",${c_transactionsummary.buyer_count})/sum(pivot_row(${c_transactionsummary.buyer_count}))',
        value_format: !!null '', value_format_name: percent_0, _kind_hint: supermeasure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#22808b"
    show_single_value_title: false
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [c_transactionsummary.buyer_count, cohort.campaign_segment_name,
      c_transactionsummary.revenue_per_customer]
    series_types: {}
    hidden_points_if_no: [segment_1, segment_3]
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 41
    col: 20
    width: 4
    height: 3
  - name: <font color="#5a1038" size="5"><center>Cohort Snapshot</font>
    type: text
    title_text: <font color="#5a1038" size="5"><center>Cohort Snapshot</font>
    row: 29
    col: 0
    width: 24
    height: 3
  - title: Top 20 Cities by Buyer Count
    name: Top 20 Cities by Buyer Count

    explore: standard_model
    type: looker_wordcloud
    fields: [c_transactionsummary.buyer_count, c_organizationsummary.city]
    filters:
      c_organizationsummary.city: "-NULL"
    sorts: [c_transactionsummary.buyer_count desc]
    limit: 20
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    up_color: "#8dd3c7"
    down_color: "#ffed6f"
    total_color: "#bebada"
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 137
    col: 0
    width: 13
    height: 9
  - title: Cohort Tree
    name: Cohort Tree

    explore: standard_model
    type: collapsible_tree
    fields: [cohort.campaign_name, cohort.segment_name, c_transactionsummary.buyer_count]
    sorts: [c_transactionsummary.buyer_count desc, cohort.segment_name]
    limit: 500
    column_limit: 50
    series_types: {}
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 137
    col: 13
    width: 11
    height: 9
  - title: Monthly Revenue Distribution by Segments
    name: Monthly Revenue Distribution by Segments

    explore: standard_model
    type: looker_column
    fields: [c_transactionsummary.transaction_date_month, c_transactionsummary.total_revenue,
      cohort.campaign_segment_name]
    pivots: [cohort.campaign_segment_name]
    fill_fields: [c_transactionsummary.transaction_date_month]
    filters:
      c_transactionsummary.transaction_date_date: 12 months
    sorts: [c_transactionsummary.transaction_date_month desc, cohort.campaign_segment_name]
    limit: 500
    color_application:
      collection_id: c135b719-9ca1-418a-9ad9-ce7f356b8f18
      palette_id: 8cfec2a1-503a-4c10-a92e-60bf0fbed3c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    show_null_points: true
    interpolation: linear
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 72
    col: 0
    width: 24
    height: 9
  - title: Execution History
    name: Execution History

    explore: standard_model
    type: looker_grid
    fields: [cohort.campaign_name, cohort.execution_date_date]
    sorts: [cohort.execution_date_date desc]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Cohort | Campaign Name: cohort.campaign_name
      Cohort | Segment Name: cohort.segment_name
      Cohort | Execution Date: cohort.execution_date_date
    row: 0
    col: 0
    width: 24
    height: 4
  filters:
  - name: Cohort | Campaign Name
    title: Cohort | Campaign Name
    type: field_filter
    default_value: "[A1] Revenue Segment Migration"
    allow_multiple_values: true
    required: true

    explore: standard_model
    listens_to_filters: []
    field: cohort.campaign_name
  - name: Cohort | Segment Name
    title: Cohort | Segment Name
    type: field_filter
    default_value: "-Remainders"
    allow_multiple_values: true
    required: false

    explore: standard_model
    listens_to_filters: [Cohort | Campaign Name]
    field: cohort.segment_name
  - name: Cohort | Execution Date
    title: Cohort | Execution Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false

    explore: standard_model
    listens_to_filters: []
    field: cohort.execution_date_date

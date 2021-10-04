view: c_lulumodels {
  sql_table_name: c_lulumodels ;;
  label: "Customer"

  dimension: c_id {
    type: string
    sql: ${TABLE}.id ;;
    label: "ID"
    hidden: yes
    primary_key: yes
  }

  dimension: c_mastercustomer_id {
    type: string
    sql: ${TABLE}.c_mastercustomerid ;;
    label: "MasterCustomer ID"
    hidden: yes
  }

  measure: c_average_ltv_score {
    type: average
    sql: ${TABLE}.c_ltvscore ;;
    value_format_name: decimal_2
    label: "Average LTV Score"
    description: "Lululemon-generated model: Lifetime Value Score"
  }

  dimension: c_ltv_decile {
    type: number
    sql: ${TABLE}.c_ltvdecile ;;
    label: "LTV Decile"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Lifetime Value Decile"
  }

  dimension: c_sweat_life_bucket {
    type: string
    sql: ${TABLE}.c_sweatlifebucket ;;
    label: "Sweat Life Bucket"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Sweat Life Bucket"
  }

  dimension: c_propensity_to_buy_valentines {
    type: string
    sql: ${TABLE}.c_propensitytobuyvalentines ;;
    label: "Propensity to Buy - Valentines"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Propensity to Buy Bucket - Valentines"
  }

  dimension: c_propensity_to_buy_mothers_day {
    type: string
    sql: ${TABLE}.c_propensitytobuymothersday ;;
    label: "Propensity to Buy - Mothers Day"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Propensity to Buy Bucket - Mothers Day"
  }

  dimension: c_propensity_to_buy_fathers_day {
    type: string
    sql: ${TABLE}.c_propensitytobuyfathersday ;;
    label: "Propensity to Buy - Fathers Day"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Propensity to Buy Bucket - Fathers Day"
  }

  dimension: c_propensity_to_buy_bts_pants {
    type: string
    sql: ${TABLE}.c_propensitytobuybtspants ;;
    label: "Propensity to Buy - BTS Pants Focus"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Propensity to Buy Bucket - BTS Pants Focus"
  }

  dimension: c_propensity_to_buy_jackets_and_outerwear {
    type: string
    sql: ${TABLE}.c_propensitytobuyjo ;;
    label: "Propensity to Buy - Jackets and Outerwear"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Propensity to Buy Bucket - Jackets and Outerwear"
  }

  dimension: c_propensity_to_buy_holiday {
    type: string
    sql: ${TABLE}.c_propensitytobuyhday ;;
    label: "Propensity to Buy - Holiday"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Propensity to Buy Bucket - Holiday"
  }

  dimension: c_bra_model_bucket {
    type: string
    sql: ${TABLE}.c_bramodel ;;
    label: "Bra Model Bucket"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Bra Model Bucket"
  }

  dimension: c_pants_model_bucket {
    type: string
    sql: ${TABLE}.c_pantsmodel ;;
    label: "Pants Model Bucket"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Pants Model Bucket"
  }

  dimension: c_mens_model_bucket {
    type: string
    sql: ${TABLE}.c_mensmodel ;;
    label: "Mens Model Bucket"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Mens Model Bucket"
  }

  dimension: c_lulu_lifetime_value_current_fiscal_period {
    type: string
    sql: ${TABLE}.c_luluModel14 ;;
    label: "Lulu Lifetime Value - Current Fiscal Period"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Lifetime Value Current Fiscal Period"
  }

  dimension: c_lulu_lifetime_value_last_quarter {
    type: string
    sql: ${TABLE}.c_luluModel15 ;;
    label: "Lulu Lifetime Value - Last Quarter"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Lifetime Value Last Quarter"
  }

  dimension: c_lulu_lifetime_value_last_fiscal_year {
    type: string
    sql: ${TABLE}.c_luluModel16 ;;
    label: "Lulu Lifetime Value - Last Fiscal Year"
    group_label: "Lulu Segments/Models"
    description: "Lululemon-generated model: Lifetime Value Last Fiscal Year"
  }

}

connection: "next_prd_redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# - explore: t1021_cid_title_day

# - explore: t1023_animated_video


explore: t3016_seg_agg_cid_day {
  label: "1) Apple Daily US Summary (by day)"
  view_label: "CID Views"
  sql_always_where: ${c3016_country_id} = 'US' and ${c3016_product} in ('Apple Daily', 'AppleDaily', 'ADAILY', 'Apple Daily TW', 'ADAILY-IPAD', 'Apple Daily-IPAD'} and ${c3016_region} in ('HK', 'TW') ;;
}



# - explore: t4003_animated_cid

# - explore: t8000_content

# - explore: t8001_user_crossref

explore: t8002_contentview {
  label: "2) Apple Daily US Views Detail (2 mths by time)"
  view_label: "All Content Views"
  sql_always_where: ${c8002_country} = 'US' and ${c8002_product} = 'Apple Daily' and ${c8002_region} in ('HK', 'TW') ;;
}


# - explore: t8014_user_campaign

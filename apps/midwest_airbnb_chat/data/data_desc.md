# Midwest Airbnb Data Dictionary

This dataset contains 14,887 Airbnb listings from Chicago, Columbus, and the Twin Cities. Each row represents one Airbnb listing.

| Column | Type | Description | Example / Notes |
|---|---|---|---|
| `city` | TEXT | City or metropolitan area where the Airbnb listing is located. | Chicago, Columbus, or Twin Cities |
| `snapshot_date` | TEXT | Date when the Airbnb data for the city was collected. | Chicago: 2026-07-20; Columbus: 2026-07-23; Twin Cities: 2026-07-21 |
| `id` | TEXT | Unique identifier assigned to the Airbnb listing. | Used to distinguish individual listings |
| `name` | TEXT | Title or name of the Airbnb listing provided by the host. | Example: "Cozy Downtown Apartment" |
| `host_id` | TEXT | Unique identifier assigned to the host of the listing. | A host may have more than one listing |
| `host_name` | TEXT | Display name of the host associated with the listing. | May be a person's name or business name |
| `host_since` | TEXT | Date the host first joined Airbnb. | Stored as a date |
| `host_is_superhost` | TEXT | Indicates whether the host has Airbnb Superhost status. | Typically `t` for true or `f` for false |
| `neighbourhood` | TEXT | Neighborhood in which the listing is located. | Neighborhood names are based on geographic location |
| `latitude` | REAL | Approximate north-south geographic coordinate of the listing. | Decimal-degree coordinate; location is anonymized by Airbnb |
| `longitude` | REAL | Approximate east-west geographic coordinate of the listing. | Decimal-degree coordinate; location is anonymized by Airbnb |
| `property_type` | TEXT | Detailed type of property being offered. | Examples may include entire condo, private room, or entire rental unit |
| `room_type` | TEXT | General category describing how much of the property the guest rents. | Examples: Entire home/apt, Private room, Shared room, Hotel room |
| `accommodates` | INTEGER | Maximum number of guests the listing is designed to accommodate. | Example: 2, 4, 6, or 10 guests |
| `bedrooms` | REAL | Number of bedrooms available in the listing. | May contain missing values |
| `beds` | REAL | Number of beds available to guests. | May contain missing values |
| `bathrooms_text` | TEXT | Text description of the number and type of bathrooms. | Examples: "1 bath", "2 baths", or "1 shared bath" |
| `price` | REAL | Nightly listing price in U.S. dollars. | Numeric nightly price |
| `minimum_nights` | INTEGER | Minimum number of nights a guest must book for a stay. | Example: 1, 2, 3, or more nights |
| `availability_365` | INTEGER | Number of days the listing is shown as available during the next 365 days. | Range: 0–365; unavailable days may be booked or blocked by the host |
| `number_of_reviews` | INTEGER | Total number of reviews the listing has received. | 0 or greater |
| `number_of_reviews_ltm` | INTEGER | Number of reviews the listing received during the last twelve months. | LTM = last twelve months |
| `first_review` | TEXT | Date of the earliest recorded review for the listing. | May be missing for listings with no reviews |
| `last_review` | TEXT | Date of the most recent recorded review for the listing. | May be missing for listings with no reviews |
| `review_scores_rating` | REAL | Overall guest review rating for the listing. | Higher values represent stronger guest ratings; may be missing for listings without enough reviews |
| `reviews_per_month` | REAL | Average number of reviews the listing receives per month. | May be missing for listings with no reviews |
| `instant_bookable` | TEXT | Indicates whether guests can book the listing immediately without waiting for host approval. | Typically `t` for true or `f` for false |
| `estimated_revenue_l365d` | REAL | Estimated listing revenue during the last 365 days based on the available listing and booking-related data. | L365D = last 365 days; this is an estimate rather than actual host-reported revenue |
| `amenities_count` | INTEGER | Number of amenities listed for the property. | Examples include Wi-Fi, kitchen, parking, air conditioning, etc. |
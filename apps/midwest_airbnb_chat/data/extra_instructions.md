# Extra Instructions

Rules the LLM follows when it writes SQL for `listings`.

- `price` is the nightly price in U.S. dollars. When the user asks what something costs, use `price` and round money to whole dollars in the answer.

- `host_is_superhost` and `instant_bookable` are stored as the text values `t` and `f`, not as TRUE/FALSE booleans. Use `t` for yes and `f` for no when filtering these columns.

- When filtering by `city`, match city names case-insensitively so that inputs such as "chicago", "Chicago", or "CHICAGO" return the same results.

- When calculating average ratings, ignore rows where `review_scores_rating` is NULL so missing ratings do not affect the calculation.

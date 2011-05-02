# Greece uses a variable-length ndc code, thus we use a separate file to not let all_other.rb explode.
#
# Note: Greece uses a variable ndc format from length 2 to 4.
#       To save space, we only use ndcs of length up to 3 (and use the fallback).
#
ndcs = [
   '21', # Athens
  '231', # Thessaloniki
  '241', # Larissa
  '251', # Kavala
  '261', # Patras
  '271', # Tripoli
  '281', # Heraklion
  '690', # Mobile
  '693', # Mobile
  '694', # Mobile
  '695', # Mobile
  '697', # Mobile
  '698', # Mobile
  '699', # Mobile
  '800'  # Service
]

Phony.define do
  country '30', one_of(ndcs, :max_length => 4) >> split(6)
end
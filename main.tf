resource "google_bigtable_instance_iam_policy" "bigtable_instance_iam_policies" {
  for_each = var.bigtable_instance_iam_policies

  instance    = each.value.instance
  policy_data = each.value.policy_data
  project     = each.value.project
}


output "iam_policy_AllowListAllAccounts_arn" {
  value = aws_iam_policy.AllowListAllAccounts.arn
}

output "iam_policy_AllowIndividualUserToSeeAndManageTheirOwnAccountInformation_arn" {
  value = aws_iam_policy.AllowIndividualUserToSeeAndManageTheirOwnAccountInformation.arn
}

output "iam_policy_AllowIndividualUserToListTheirOwnMFA_arn" {
  value = aws_iam_policy.AllowIndividualUserToListTheirOwnMFA.arn
}

output "iam_policy_AllowIndividualUserToManageTheirOwnMFA_arn" {
  value = aws_iam_policy.AllowIndividualUserToManageTheirOwnMFA.arn
}

output "iam_policy_AllowIndividualUserToListTheirOwnCodeCommit_arn" {
  value = aws_iam_policy.AllowIndividualUserToListTheirOwnCodeCommit.arn
}

output "iam_policy_AllowGetAccountDetails_arn" {
  value = aws_iam_policy.AllowGetAccountDetails.arn
}

output "iam_policy_AllowIndividualUserToChangeTheirOwnPassword_arn" {
  value = aws_iam_policy.AllowIndividualUserToChangeTheirOwnPassword.arn
}

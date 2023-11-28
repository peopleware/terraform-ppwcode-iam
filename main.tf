resource "aws_iam_policy" "AllowListAllAccounts" {
  name   = "AllowListAllAccounts"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowListAllAccounts.json
}

data "aws_iam_policy_document" "AllowListAllAccounts" {
  statement {
    actions = [
      "iam:ListAccountAliases",
      "iam:ListUsers",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/*",
    ]
  }
}

resource "aws_iam_policy" "AllowIndividualUserToSeeAndManageTheirOwnAccountInformation" {
  name   = "AllowIndividualUserToSeeAndManageTheirOwnAccountInformation"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowIndividualUserToSeeAndManageTheirOwnAccountInformation.json
}

data "aws_iam_policy_document" "AllowIndividualUserToSeeAndManageTheirOwnAccountInformation" {
  statement {
    actions = [
      "iam:GetUser",
      "iam:ListGroupsForUser",
      "iam:CreateAccessKey",
      "iam:CreateLoginProfile",
      "iam:DeleteAccessKey",
      "iam:DeleteLoginProfile",
      "iam:GetAccountPasswordPolicy",
      "iam:GetAccountSummary",
      "iam:GetLoginProfile",
      "iam:ListAccessKeys",
      "iam:UpdateAccessKey",
      "iam:GetAccessKeyLastUsed",
      "iam:UpdateLoginProfile",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/$${aws:username}",
    ]
  }
}

resource "aws_iam_policy" "AllowIndividualUserToListTheirOwnMFA" {
  name   = "AllowIndividualUserToListTheirOwnMFA"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowIndividualUserToListTheirOwnMFA.json
}

data "aws_iam_policy_document" "AllowIndividualUserToListTheirOwnMFA" {
  statement {
    actions = [
      "iam:ListVirtualMFADevices",
      "iam:ListMFADevices",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:mfa/*",
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/$${aws:username}",
    ]
  }
}

resource "aws_iam_policy" "AllowIndividualUserToManageTheirOwnMFA" {
  name   = "AllowIndividualUserToManageTheirOwnMFA"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowIndividualUserToManageTheirOwnMFA.json
}

data "aws_iam_policy_document" "AllowIndividualUserToManageTheirOwnMFA" {
  statement {
    actions = [
      "iam:CreateVirtualMFADevice",
      "iam:DeactivateMFADevice",
      "iam:DeleteVirtualMFADevice",
      "iam:RequestSmsMfaRegistration",
      "iam:FinalizeSmsMfaRegistration",
      "iam:EnableMFADevice",
      "iam:ResyncMFADevice",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:mfa/$${aws:username}",
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/$${aws:username}",
    ]
  }
}

resource "aws_iam_policy" "AllowIndividualUserToListTheirOwnCodeCommit" {
  name   = "AllowIndividualUserToListTheirOwnCodeCommit"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowIndividualUserToListTheirOwnCodeCommit.json
}

data "aws_iam_policy_document" "AllowIndividualUserToListTheirOwnCodeCommit" {
  statement {
    actions = [
      "iam:ListSSHPublicKeys",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/$${aws:username}",
    ]
  }
}

resource "aws_iam_policy" "AllowIndividualUserToManageTheirOwnCodeCommit" {
  name   = "AllowIndividualUserToManageTheirOwnCodeCommit"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowIndividualUserToManageTheirOwnCodeCommit.json
}

data "aws_iam_policy_document" "AllowIndividualUserToManageTheirOwnCodeCommit" {
  statement {
    actions = [
      "iam:UploadSSHPublicKey",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/$${aws:username}",
    ]
  }
}

resource "aws_iam_policy" "AllowGetAccountDetails" {
  name   = "AllowGetAccountDetails"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowGetAccountDetails.json
}

data "aws_iam_policy_document" "AllowGetAccountDetails" {
  statement {
    actions = [
      "iam:GetAccountSummary",
      "iam:ListAccountAliases",
    ]

    resources = [
      "*",
    ]
  }
}

resource "aws_iam_policy" "AllowIndividualUserToChangeTheirOwnPassword" {
  name   = "AllowIndividualUserToChangeTheirOwnPassword"
  path   = "/"
  policy = data.aws_iam_policy_document.AllowIndividualUserToChangeTheirOwnPassword.json
}

data "aws_iam_policy_document" "AllowIndividualUserToChangeTheirOwnPassword" {
  statement {
    actions = [
      "iam:ChangePassword",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/$${aws:username}",
    ]
  }
}

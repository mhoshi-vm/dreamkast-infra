# Create a monitor
resource "uptimerobot_monitor" "dreamkast-by-terraform" {
  friendly_name = "Dreamkast by Terraform"
  type          = "http"
  url           = "https://event.cloudnativedays.jp"

  alert_contact {
    id = uptimerobot_alert_contact.slack.id
  }

  alert_contact {
    id = data.uptimerobot_alert_contact.default_alert_contact.id
  }

  interval = 60

  lifecycle {
    ignore_changes = [
      alert_contact
    ]
  }
}

resource "uptimerobot_monitor" "website-by-terraform" {
  friendly_name = "Website by Terraform"
  type          = "http"
  url           = "https://cloudnativedays.jp"

  alert_contact {
    id = uptimerobot_alert_contact.slack.id
  }

  alert_contact {
    id = data.uptimerobot_alert_contact.default_alert_contact.id
  }

  interval = 60

  lifecycle {
    ignore_changes = [
      alert_contact
    ]
  }
}

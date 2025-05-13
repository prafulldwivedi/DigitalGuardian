import whois
from twilio.rest import Client

def check_domain(domain_name):
    try:
        details = whois.whois(domain_name)
        return bool(details.domain_name)
    except:
        return False

def send_alert(phone_number, message):
    account_sid = 'your_account_sid'
    auth_token = 'your_auth_token'
    client = Client(account_sid, auth_token)

    message = client.messages.create(
        body=message,
        from_='+1234567890',  # Twilio number
        to=phone_number
    )
    return message.sid

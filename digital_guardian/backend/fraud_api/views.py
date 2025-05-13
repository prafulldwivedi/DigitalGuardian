from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import DomainCheck
from .utils import check_domain, send_alert

@api_view(['POST'])
def verify_domain(request):
    domain = request.data.get('domain')
    phone = request.data.get('phone')

    is_valid = check_domain(domain)
    if not is_valid:
        send_alert(phone, f"⚠️ Alert: The domain {domain} seems fraudulent!")

    DomainCheck.objects.create(domain=domain, is_fraudulent=not is_valid)
    
    return Response({"domain": domain, "is_fraudulent": not is_valid})

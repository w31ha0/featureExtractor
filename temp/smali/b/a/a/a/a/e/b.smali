.class public Lb/a/a/a/a/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/e/m;


# instance fields
.field private final a:Lb/a/a/a/r;

.field private b:Lb/a/a/a/a/e/o;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lb/a/a/a/e;

    invoke-direct {v0}, Lb/a/a/a/e;-><init>()V

    invoke-direct {p0, v0}, Lb/a/a/a/a/e/b;-><init>(Lb/a/a/a/r;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lb/a/a/a/r;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lb/a/a/a/a/e/b;->a:Lb/a/a/a/r;

    .line 37
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lb/a/a/a/a/e/b;->d:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 101
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/a/a/a/a/e/b;->d:Z

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lb/a/a/a/a/e/b;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lb/a/a/a/a/e/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/a/e/b;->b:Lb/a/a/a/a/e/o;

    invoke-static {v0}, Lb/a/a/a/a/e/n;->a(Lb/a/a/a/a/e/o;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lb/a/a/a/a/e/b;->a:Lb/a/a/a/r;

    const-string v2, "Fabric"

    const-string v3, "Custom SSL pinning enabled"

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :try_start_2
    iget-object v1, p0, Lb/a/a/a/a/e/b;->a:Lb/a/a/a/r;

    const-string v2, "Fabric"

    const-string v3, "Exception while validating pinned certs"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lb/a/a/a/a/e/d;Ljava/lang/String;Ljava/util/Map;)Lb/a/a/a/a/e/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/a/e/d;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lb/a/a/a/a/e/e;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 66
    sget-object v0, Lb/a/a/a/a/e/c;->a:[I

    invoke-virtual {p1}, Lb/a/a/a/a/e/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported HTTP method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    invoke-static {p2, p3, v2}, Lb/a/a/a/a/e/e;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lb/a/a/a/a/e/e;

    move-result-object v0

    move-object v1, v0

    .line 88
    :goto_0
    invoke-direct {p0, p2}, Lb/a/a/a/a/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/a/e/b;->b:Lb/a/a/a/a/e/o;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lb/a/a/a/a/e/b;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1}, Lb/a/a/a/a/e/e;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 97
    :cond_0
    return-object v1

    .line 72
    :pswitch_1
    invoke-static {p2, p3, v2}, Lb/a/a/a/a/e/e;->b(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lb/a/a/a/a/e/e;

    move-result-object v0

    move-object v1, v0

    .line 73
    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static {p2}, Lb/a/a/a/a/e/e;->d(Ljava/lang/CharSequence;)Lb/a/a/a/a/e/e;

    move-result-object v0

    move-object v1, v0

    .line 77
    goto :goto_0

    .line 80
    :pswitch_3
    invoke-static {p2}, Lb/a/a/a/a/e/e;->e(Ljava/lang/CharSequence;)Lb/a/a/a/a/e/e;

    move-result-object v0

    move-object v1, v0

    .line 81
    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lb/a/a/a/a/e/o;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lb/a/a/a/a/e/b;->b:Lb/a/a/a/a/e/o;

    if-eq v0, p1, :cond_0

    .line 47
    iput-object p1, p0, Lb/a/a/a/a/e/b;->b:Lb/a/a/a/a/e/o;

    .line 48
    invoke-direct {p0}, Lb/a/a/a/a/e/b;->a()V

    .line 50
    :cond_0
    return-void
.end method

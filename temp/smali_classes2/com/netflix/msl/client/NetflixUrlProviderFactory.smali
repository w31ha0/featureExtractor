.class public Lcom/netflix/msl/client/NetflixUrlProviderFactory;
.super Ljava/lang/Object;
.source "NetflixUrlProviderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs constructUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 22
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Lcom/netflix/msl/client/NetflixEnvironment;)Lcom/netflix/msl/client/NetflixUrlProvider;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/netflix/msl/client/NetflixUrlProviderFactory$1;->$SwitchMap$com$netflix$msl$client$NetflixEnvironment:[I

    invoke-virtual {p0}, Lcom/netflix/msl/client/NetflixEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/client/NetflixUrlProviderFactory$ProductionNetflixUrlProvider;

    invoke-direct {v0}, Lcom/netflix/msl/client/NetflixUrlProviderFactory$ProductionNetflixUrlProvider;-><init>()V

    .line 15
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/netflix/msl/client/NetflixUrlProviderFactory$TestNetflixUrlProvider;

    invoke-direct {v0}, Lcom/netflix/msl/client/NetflixUrlProviderFactory$TestNetflixUrlProvider;-><init>()V

    goto :goto_0

    .line 15
    :pswitch_2
    new-instance v0, Lcom/netflix/msl/client/NetflixUrlProviderFactory$StagingNetflixUrlProvider;

    invoke-direct {v0}, Lcom/netflix/msl/client/NetflixUrlProviderFactory$StagingNetflixUrlProvider;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

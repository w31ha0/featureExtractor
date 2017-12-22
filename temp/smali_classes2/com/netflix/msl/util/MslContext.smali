.class public abstract Lcom/netflix/msl/util/MslContext;
.super Ljava/lang/Object;
.source "MslContext.java"


# static fields
.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
.field private volatile offset:J

.field private volatile synced:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/util/MslContext;->synced:Z

    .line 299
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/msl/util/MslContext;->offset:J

    return-void
.end method


# virtual methods
.method public abstract getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.end method

.method public abstract getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.end method

.method public abstract getEntityAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
.end method

.method public abstract getKeyExchangeFactories()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;
.end method

.method public abstract getKeyExchangeScheme(Ljava/lang/String;)Lcom/netflix/msl/keyx/KeyExchangeScheme;
.end method

.method public abstract getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
.end method

.method public abstract getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
.end method

.method public abstract getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
.end method

.method public abstract getMslStore()Lcom/netflix/msl/util/MslStore;
.end method

.method public abstract getRandom()Ljava/util/Random;
.end method

.method public final getRemoteTime()Ljava/util/Date;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 290
    iget-boolean v0, p0, Lcom/netflix/msl/util/MslContext;->synced:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 292
    iget-wide v2, p0, Lcom/netflix/msl/util/MslContext;->offset:J

    add-long/2addr v2, v0

    .line 293
    new-instance v0, Ljava/util/Date;

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public abstract getTime()J
.end method

.method public abstract getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;
.end method

.method public abstract getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;
.end method

.method public abstract getUserAuthenticationScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;
.end method

.method public abstract isPeerToPeer()Z
.end method

.method public final updateRemoteTime(Ljava/util/Date;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 274
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 275
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 276
    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/netflix/msl/util/MslContext;->offset:J

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/util/MslContext;->synced:Z

    .line 278
    return-void
.end method

.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;
.super Ljava/lang/Object;
.source "NfManifestCache.java"


# instance fields
.field final mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field final mNetworkId:Ljava/lang/String;

.field final mPlayableId:J


# direct methods
.method public constructor <init>(JLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    .line 54
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 55
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetworkId:Ljava/lang/String;

    .line 56
    return-void

    .line 55
    :cond_0
    const-string/jumbo p4, ""

    goto :goto_0
.end method

.method public static getManifestKey(Ljava/util/List;J)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;",
            ">;J)",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "getManifestKey %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 83
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 62
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    .line 63
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    iget-wide v4, p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetworkId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

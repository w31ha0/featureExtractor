.class public Lcom/netflix/mediaclient/service/offline/download/VideoDownloadableInfo;
.super Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;
.source "VideoDownloadableInfo.java"


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v5, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;-><init>(Ljava/util/List;JLjava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)V

    .line 16
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/media/manifest/Stream;)Lcom/netflix/mediaclient/service/offline/download/VideoDownloadableInfo;
    .locals 4

    .prologue
    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/service/offline/download/VideoDownloadableInfo;->buildCdnUrls(Lcom/netflix/mediaclient/media/manifest/Stream;)Ljava/util/List;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/VideoDownloadableInfo;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/manifest/Stream;->size:Ljava/lang/Long;

    iget-object v3, p0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/download/VideoDownloadableInfo;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;)V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getCdnUrls()Ljava/util/List;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->getCdnUrls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSizeOfDownloadable()J
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->getSizeOfDownloadable()J

    move-result-wide v0

    return-wide v0
.end method

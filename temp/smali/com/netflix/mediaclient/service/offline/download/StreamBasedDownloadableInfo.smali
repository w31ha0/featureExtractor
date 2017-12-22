.class abstract Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;
.super Ljava/lang/Object;
.source "StreamBasedDownloadableInfo.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;


# instance fields
.field private final mCdnUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadableId:Ljava/lang/String;

.field private final mDownloadableType:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field private final mSize:J


# direct methods
.method constructor <init>(Ljava/util/List;JLjava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/offline/download/DownloadableType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mCdnUrls:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mCdnUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mSize:J

    .line 26
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mDownloadableId:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mDownloadableType:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 28
    return-void
.end method

.method static buildCdnUrls(Lcom/netflix/mediaclient/media/manifest/Stream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 35
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/Stream;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 52
    :goto_0
    return-object v0

    .line 38
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/media/manifest/Stream;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Url;

    .line 40
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Url;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    new-instance v5, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    iget-object v6, v0, Lcom/netflix/mediaclient/media/manifest/Url;->url:Ljava/lang/String;

    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Url;->store:Lcom/netflix/mediaclient/media/manifest/Store;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/Url;->store:Lcom/netflix/mediaclient/media/manifest/Store;

    iget v1, v1, Lcom/netflix/mediaclient/media/manifest/Store;->rank:I

    :goto_2
    iget v0, v0, Lcom/netflix/mediaclient/media/manifest/Url;->cdn_id:I

    int-to-long v8, v0

    invoke-direct {v5, v6, v1, v8, v9}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;-><init>(Ljava/lang/String;IJ)V

    .line 45
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 49
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    move-object v0, v2

    .line 50
    goto :goto_0

    :cond_5
    move-object v0, v3

    .line 52
    goto :goto_0
.end method


# virtual methods
.method public getCdnUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mCdnUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mDownloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mDownloadableType:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method

.method public getSizeOfDownloadable()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/StreamBasedDownloadableInfo;->mSize:J

    return-wide v0
.end method

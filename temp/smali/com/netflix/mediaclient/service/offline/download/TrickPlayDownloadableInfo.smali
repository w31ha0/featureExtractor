.class public Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;
.super Ljava/lang/Object;
.source "TrickPlayDownloadableInfo.java"

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

.field private final mSize:J


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mCdnUrls:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mCdnUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mCdnUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->sortByRank(Ljava/util/List;)V

    .line 24
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mDownloadableId:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mSize:J

    .line 26
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/media/TrickplayUrl;)Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getDownloadableSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getUrl()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 34
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 35
    new-instance v6, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    const/4 v7, 0x1

    const-wide/16 v8, 0x1

    invoke-direct {v6, v5, v7, v8, v9}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;-><init>(Ljava/lang/String;IJ)V

    .line 40
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getDownloadableSize()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;-><init>(Ljava/util/List;Ljava/lang/String;J)V

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
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mCdnUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mDownloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method

.method public getSizeOfDownloadable()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/TrickPlayDownloadableInfo;->mSize:J

    return-wide v0
.end method

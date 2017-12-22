.class public Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;
.super Ljava/lang/Object;
.source "SubtitleDownloadableInfo.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitleDlInfo"


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
.method private constructor <init>(Ljava/util/List;JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mCdnUrls:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mCdnUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mCdnUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->sortByRank(Ljava/util/List;)V

    .line 24
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mSize:J

    .line 25
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mDownloadableId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/media/SubtitleTrackData;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleUrl;",
            ">;)",
            "Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v4

    .line 39
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v4

    move-wide v2, v6

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 43
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 44
    if-nez v1, :cond_4

    .line 45
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_3
    new-instance v2, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    .line 53
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getCdnId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getRankForCdn(Ljava/lang/String;)I

    move-result v9

    .line 55
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getCdnId()J

    move-result-wide v10

    invoke-direct {v2, v3, v9, v10, v11}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;-><init>(Ljava/lang/String;IJ)V

    .line 56
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getSize()J

    move-result-wide v2

    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 48
    const-string/jumbo v0, "nf_subtitleDlInfo"

    const-string/jumbo v9, "subtitleUrl has different downloadableId.. ignore"

    invoke-static {v0, v9}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 61
    new-instance v4, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;-><init>(Ljava/util/List;JLjava/lang/String;)V

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
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mCdnUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mDownloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method

.method public getSizeOfDownloadable()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/SubtitleDownloadableInfo;->mSize:J

    return-wide v0
.end method

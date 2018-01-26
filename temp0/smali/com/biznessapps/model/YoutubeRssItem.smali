.class public Lcom/biznessapps/model/YoutubeRssItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "YoutubeRssItem.java"


# instance fields
.field private creator:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private feedlinkCountHint:Ljava/lang/String;

.field private feedlinkHref:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private mediaThumbnailUrl:Ljava/lang/String;

.field private published:Ljava/lang/String;

.field private ratingAverage:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private statisticsViewCount:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedlinkCountHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->feedlinkCountHint:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedlinkHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->feedlinkHref:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->mediaThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->published:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingAverage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->ratingAverage:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsViewCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->statisticsViewCount:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/model/YoutubeRssItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0
    .param p1, "creator"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->creator:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->description:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFeedlinkCountHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedlinkCountHint"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->feedlinkCountHint:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setFeedlinkHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedlinkHref"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->feedlinkHref:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->imageUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->link:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setMediaThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaThumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->mediaThumbnailUrl:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setPublished(Ljava/lang/String;)V
    .locals 0
    .param p1, "published"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->published:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setRatingAverage(Ljava/lang/String;)V
    .locals 0
    .param p1, "ratingAverage"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->ratingAverage:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->section:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setStatisticsViewCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "statisticsViewCount"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->statisticsViewCount:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->subtitle:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->summary:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/biznessapps/model/YoutubeRssItem;->title:Ljava/lang/String;

    .line 40
    return-void
.end method

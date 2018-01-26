.class public Lcom/biznessapps/model/PodcastItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "PodcastItem.java"


# instance fields
.field private audioUrl:Ljava/lang/String;

.field private creator:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private section:Ljava/lang/String;

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
.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/model/PodcastItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioUrl"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->audioUrl:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0
    .param p1, "creator"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->creator:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->description:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->imageUrl:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->link:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->section:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->subtitle:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->summary:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/biznessapps/model/PodcastItem;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

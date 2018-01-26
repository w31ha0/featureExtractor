.class public Lcom/biznessapps/model/RssItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "RssItem.java"


# instance fields
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
.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/model/RssItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0
    .param p1, "creator"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->creator:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->description:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->imageUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->link:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->section:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->subtitle:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->summary:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/biznessapps/model/RssItem;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.class public Lcom/biznessapps/model/InfoItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "InfoItem.java"


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private useInMemoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/InfoItem;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/model/InfoItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/model/InfoItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/model/InfoItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/model/InfoItem;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/model/InfoItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/biznessapps/model/InfoItem;->useInMemoryImage:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/model/InfoItem;->description:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/biznessapps/model/InfoItem;->id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/biznessapps/model/InfoItem;->image:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/biznessapps/model/InfoItem;->section:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/biznessapps/model/InfoItem;->title:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/biznessapps/model/InfoItem;->useInMemoryImage:Z

    .line 22
    return-void
.end method

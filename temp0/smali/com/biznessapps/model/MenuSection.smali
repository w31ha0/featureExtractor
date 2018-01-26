.class public Lcom/biznessapps/model/MenuSection;
.super Lcom/biznessapps/model/CommonListEntity;
.source "MenuSection.java"


# instance fields
.field private id:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/MenuSection;->id:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/MenuSection;->section:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/MenuSection;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/model/MenuSection;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/model/MenuSection;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/model/MenuSection;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/biznessapps/model/MenuSection;->id:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/biznessapps/model/MenuSection;->section:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/biznessapps/model/MenuSection;->title:Ljava/lang/String;

    .line 22
    return-void
.end method

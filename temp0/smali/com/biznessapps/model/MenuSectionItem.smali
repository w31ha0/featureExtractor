.class public Lcom/biznessapps/model/MenuSectionItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "MenuSectionItem.java"


# instance fields
.field private id:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/MenuSectionItem;->id:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/MenuSectionItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/biznessapps/model/MenuSectionItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/model/MenuSectionItem;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/model/MenuSectionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/model/MenuSectionItem;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/biznessapps/model/MenuSectionItem;->price:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/biznessapps/model/MenuSectionItem;->title:Ljava/lang/String;

    .line 36
    return-void
.end method

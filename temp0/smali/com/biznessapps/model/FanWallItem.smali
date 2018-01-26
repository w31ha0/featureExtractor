.class public Lcom/biznessapps/model/FanWallItem;
.super Ljava/lang/Object;
.source "FanWallItem.java"


# instance fields
.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/FanWallComment;",
            ">;"
        }
    .end annotation
.end field

.field private image:Ljava/lang/String;

.field private useInMemoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/model/FanWallItem;->comments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addComment(Lcom/biznessapps/model/FanWallComment;)V
    .locals 1
    .param p1, "comment"    # Lcom/biznessapps/model/FanWallComment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/model/FanWallItem;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/FanWallComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/biznessapps/model/FanWallItem;->comments:Ljava/util/List;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/model/FanWallItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/biznessapps/model/FanWallItem;->useInMemoryImage:Z

    return v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/biznessapps/model/FanWallItem;->image:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/biznessapps/model/FanWallItem;->useInMemoryImage:Z

    .line 38
    return-void
.end method

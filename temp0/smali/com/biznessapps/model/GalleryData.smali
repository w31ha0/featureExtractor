.class public Lcom/biznessapps/model/GalleryData;
.super Ljava/lang/Object;
.source "GalleryData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/model/GalleryData$Item;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private useCoverflow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/model/GalleryData;->items:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/model/GalleryData;->items:Ljava/util/List;

    return-object v0
.end method

.method public isUseCoverflow()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/biznessapps/model/GalleryData;->useCoverflow:Z

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/GalleryData$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/GalleryData$Item;>;"
    iput-object p1, p0, Lcom/biznessapps/model/GalleryData;->items:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setUseCoverflow(Z)V
    .locals 0
    .param p1, "useCoverflow"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/biznessapps/model/GalleryData;->useCoverflow:Z

    .line 24
    return-void
.end method

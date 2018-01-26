.class public Lcom/biznessapps/model/GalleryData$Item;
.super Ljava/lang/Object;
.source "GalleryData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/model/GalleryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private height:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/model/GalleryData$Item;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/model/GalleryData$Item;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/model/GalleryData$Item;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/model/GalleryData$Item;->width:Ljava/lang/String;

    return-object v0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/biznessapps/model/GalleryData$Item;->height:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/model/GalleryData$Item;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/model/GalleryData$Item;->info:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/model/GalleryData$Item;->width:Ljava/lang/String;

    .line 65
    return-void
.end method

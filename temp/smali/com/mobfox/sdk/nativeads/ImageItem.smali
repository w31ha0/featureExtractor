.class public Lcom/mobfox/sdk/nativeads/ImageItem;
.super Ljava/lang/Object;
.source "ImageItem.java"


# instance fields
.field h:I

.field img:Landroid/graphics/Bitmap;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "h"    # I
    .param p4, "w"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->type:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->url:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->h:I

    .line 19
    iput p4, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->w:I

    .line 20
    return-void
.end method


# virtual methods
.method public getH()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->h:I

    return v0
.end method

.method public getImg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->img:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->w:I

    return v0
.end method

.method public setImg(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/ImageItem;->img:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method

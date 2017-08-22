.class public Lcom/vpadn/ads/VpadnNativeAd$Image;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpadn/ads/VpadnNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Image"
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnNativeAd;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->a:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->b:Ljava/lang/String;

    .line 236
    iput p3, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->d:I

    .line 237
    iput p4, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->c:I

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;Ljava/lang/String;IILcom/vpadn/ads/VpadnNativeAd$1;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vpadn/ads/VpadnNativeAd$Image;-><init>(Lcom/vpadn/ads/VpadnNativeAd;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->c:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vpadn/ads/VpadnNativeAd$Image;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

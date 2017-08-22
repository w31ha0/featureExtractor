.class public Lcom/vpadn/ads/VpadnNativeAd$Rating;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpadn/ads/VpadnNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rating"
.end annotation


# instance fields
.field a:D

.field b:D

.field final synthetic c:Lcom/vpadn/ads/VpadnNativeAd;


# direct methods
.method private constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;DD)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$Rating;->c:Lcom/vpadn/ads/VpadnNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-wide p2, p0, Lcom/vpadn/ads/VpadnNativeAd$Rating;->a:D

    .line 263
    iput-wide p4, p0, Lcom/vpadn/ads/VpadnNativeAd$Rating;->b:D

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;DDLcom/vpadn/ads/VpadnNativeAd$1;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct/range {p0 .. p5}, Lcom/vpadn/ads/VpadnNativeAd$Rating;-><init>(Lcom/vpadn/ads/VpadnNativeAd;DD)V

    return-void
.end method


# virtual methods
.method public getScale()D
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/vpadn/ads/VpadnNativeAd$Rating;->a:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/vpadn/ads/VpadnNativeAd$Rating;->b:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vpadn/ads/VpadnNativeAd$Rating;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vpadn/ads/VpadnNativeAd$Rating;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

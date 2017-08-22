.class Lcom/vpadn/ads/VpadnNativeAd$1$1;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAd$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/vpadn/ads/VpadnNativeAd$1;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAd$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$1$1;->b:Lcom/vpadn/ads/VpadnNativeAd$1;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAd$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd$1$1;->b:Lcom/vpadn/ads/VpadnNativeAd$1;

    iget-object v0, v0, Lcom/vpadn/ads/VpadnNativeAd$1;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    return-void
.end method

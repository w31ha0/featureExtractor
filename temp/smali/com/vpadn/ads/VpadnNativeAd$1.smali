.class final Lcom/vpadn/ads/VpadnNativeAd$1;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/ads/VpadnNativeAd;->downloadAndDisplayImage(Lcom/vpadn/ads/VpadnNativeAd$Image;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnNativeAd$Image;

.field final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vpadn/ads/VpadnNativeAd$Image;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd$1;->a:Lcom/vpadn/ads/VpadnNativeAd$Image;

    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAd$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd$1;->a:Lcom/vpadn/ads/VpadnNativeAd$Image;

    invoke-virtual {v1}, Lcom/vpadn/ads/VpadnNativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/vpadn/ads/VpadnNativeAd$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vpadn/ads/VpadnNativeAd$1$1;-><init>(Lcom/vpadn/ads/VpadnNativeAd$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "VpadnNativeAd"

    const-string v2, "downloadAndDisplayImage throw MalformedURLException"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    const-string v1, "VpadnNativeAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadAndDisplayImage throw IOException url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vpadn/ads/VpadnNativeAd$1;->a:Lcom/vpadn/ads/VpadnNativeAd$Image;

    invoke-virtual {v3}, Lcom/vpadn/ads/VpadnNativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

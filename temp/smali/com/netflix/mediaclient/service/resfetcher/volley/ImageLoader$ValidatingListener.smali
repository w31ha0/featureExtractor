.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;
.super Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;
.source "ImageLoader.java"


# instance fields
.field protected final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field protected final staticImgConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    .line 422
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;)V

    .line 423
    iput-object p4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->staticImgConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 424
    iput-object p5, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 425
    return-void
.end method

.method private responseIsOutdated()Z
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-result-object v0

    .line 490
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 491
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->imgUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 492
    :goto_1
    if-eqz v0, :cond_0

    .line 497
    :cond_0
    return v0

    .line 490
    :cond_1
    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 430
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->responseIsOutdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string/jumbo v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error loading bitmap for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->staticImgConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 436
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->getOnFailResId()I

    move-result v2

    .line 435
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$000(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V
    .locals 3

    .prologue
    .line 441
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    .line 442
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->responseIsOutdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_3

    .line 452
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getImageLoaderInfo()Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->setLoaded(Z)V

    .line 458
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->isImmediate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$100(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->updateView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->updateView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected updateView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 470
    if-nez p2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$200(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$100(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

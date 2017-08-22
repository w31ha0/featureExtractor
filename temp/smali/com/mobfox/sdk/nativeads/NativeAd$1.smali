.class Lcom/mobfox/sdk/nativeads/NativeAd$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/nativeads/NativeAd;->loadImages(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

.field final synthetic val$imageItem:Lcom/mobfox/sdk/nativeads/ImageItem;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/nativeads/NativeAd;Lcom/mobfox/sdk/nativeads/ImageItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeAd$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

    iput-object p2, p0, Lcom/mobfox/sdk/nativeads/NativeAd$1;->val$imageItem:Lcom/mobfox/sdk/nativeads/ImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILandroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$1;->val$imageItem:Lcom/mobfox/sdk/nativeads/ImageItem;

    invoke-virtual {v0, p2}, Lcom/mobfox/sdk/nativeads/ImageItem;->setImg(Landroid/graphics/Bitmap;)V

    .line 79
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

    iget v1, v0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagesLoaded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagesLoaded:I

    .line 80
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-static {v0}, Lcom/mobfox/sdk/nativeads/NativeAd;->access$000(Lcom/mobfox/sdk/nativeads/NativeAd;)V

    .line 81
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 85
    const-string v0, "MobFoxNative"

    const-string v1, "load bitmap failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

    iget v1, v0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagedFailed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagedFailed:I

    .line 87
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-static {v0}, Lcom/mobfox/sdk/nativeads/NativeAd;->access$000(Lcom/mobfox/sdk/nativeads/NativeAd;)V

    .line 88
    return-void
.end method

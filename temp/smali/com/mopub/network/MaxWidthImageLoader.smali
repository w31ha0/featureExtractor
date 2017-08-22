.class public Lcom/mopub/network/MaxWidthImageLoader;
.super Lcom/mopub/volley/toolbox/ImageLoader;
.source "MaxWidthImageLoader.java"


# instance fields
.field private final mMaxImageWidth:I


# direct methods
.method public constructor <init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 5
    .param p1, "queue"    # Lcom/mopub/volley/RequestQueue;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imageCache"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

    .prologue
    .line 15
    invoke-direct {p0, p1, p3}, Lcom/mopub/volley/toolbox/ImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V

    .line 18
    const-string v3, "window"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 19
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 20
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 21
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 24
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/mopub/network/MaxWidthImageLoader;->mMaxImageWidth:I

    .line 25
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    .line 29
    iget v0, p0, Lcom/mopub/network/MaxWidthImageLoader;->mMaxImageWidth:I

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

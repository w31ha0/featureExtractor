.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

.field final synthetic val$listener:Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;->val$listener:Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;->val$listener:Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;->onErrorResponse(Ljava/lang/String;)V

    .line 264
    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 268
    if-nez p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;->val$listener:Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;

    invoke-interface {v0, v1, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;->onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$1;->val$listener:Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;->onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$4;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$4;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$700(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;

    .line 725
    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->access$800(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;

    .line 729
    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->access$900(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 732
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 733
    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->access$600(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->access$1002(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 734
    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->access$900(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->NETWORK:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    invoke-interface {v4, v1, v5}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;->onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    goto :goto_0

    .line 736
    :cond_2
    invoke-static {v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->access$900(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$4;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$700(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$4;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$1102(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 742
    return-void
.end method

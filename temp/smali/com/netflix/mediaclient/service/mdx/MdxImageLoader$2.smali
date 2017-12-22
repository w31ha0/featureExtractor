.class Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;
.super Ljava/lang/Object;
.source "MdxImageLoader.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 96
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_0
    return-void
.end method

.method public onResourcePrefetched(Ljava/lang/String;ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$6$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 918
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 919
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayVideos()Ljava/util/List;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 921
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V

    .line 927
    :cond_0
    return-void
.end method

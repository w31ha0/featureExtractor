.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private final triggeredByCommand:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    .line 1029
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->triggeredByCommand:Z

    .line 1030
    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1038
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2702(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 1042
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 1043
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->fetchImage(Ljava/lang/String;)V

    .line 1046
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getBifUrl()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    .line 1052
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->triggeredByCommand:Z

    if-eqz v0, :cond_2

    .line 1053
    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 1054
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v1

    .line 1055
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getCatalogIdUrl()Ljava/lang/String;

    move-result-object v3

    .line 1056
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 1053
    invoke-static {v6, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3002(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 1057
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 1058
    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    iget-object v7, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I

    move-result v8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 1059
    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    iget-object v9, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I

    move-result v10

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Z

    move-result v11

    .line 1057
    invoke-virtual/range {v5 .. v11}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v2, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$3400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1064
    :cond_3
    return-void
.end method

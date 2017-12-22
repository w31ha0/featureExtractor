.class Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;
.super Ljava/lang/Object;
.source "FalkorAccess.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;


# instance fields
.field private final clientId:I

.field private final requestId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;II)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    .line 626
    iput p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    .line 627
    return-void
.end method


# virtual methods
.method public onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 839
    if-nez v0, :cond_0

    .line 840
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onActorDetailsAndRelatedFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onActorDetailsAndRelatedFetched(ILjava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1019
    if-nez v0, :cond_0

    .line 1020
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onAdvisoriesFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onAdvisoriesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 762
    if-nez v0, :cond_0

    .line 763
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for oBBVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :goto_0
    return-void

    .line 766
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onBBVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 984
    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 751
    if-nez v0, :cond_0

    .line 752
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onCWVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onCWVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 728
    if-nez v0, :cond_0

    .line 729
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onEpisodeDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onEpisodeDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 794
    if-nez v0, :cond_0

    .line 795
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onEpisodesFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onEpisodesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onFalkorVideoFetched(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 698
    if-nez v0, :cond_0

    .line 699
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onFalkorVideoFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onFalkorVideoFetched(ILcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 872
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 873
    if-nez v0, :cond_0

    .line 874
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onGenreListsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onGenreListsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 643
    if-nez v0, :cond_0

    .line 644
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for client onGenreLoLoMoPrefetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onGenreLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 884
    if-nez v0, :cond_0

    .line 885
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onGenresFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_0
    return-void

    .line 888
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onGenresFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 998
    if-nez v0, :cond_0

    .line 999
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onInteractiveVideoMomentsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onInteractiveMomentsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 975
    return-void
.end method

.method public onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 718
    if-nez v0, :cond_0

    .line 719
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onKidsCharacterDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onKidsCharacterDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 632
    if-nez v0, :cond_0

    .line 633
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for client onLoLoMoPrefetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 677
    if-nez v0, :cond_0

    .line 678
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onLoLoMoSummaryFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoLoMoSummaryFetched(ILcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 655
    if-nez v0, :cond_0

    .line 656
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onLoMosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoMosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 708
    if-nez v0, :cond_0

    .line 709
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onMovieDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onMovieDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 961
    if-nez v0, :cond_0

    .line 962
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onIrisNotificationsListFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_0
    return-void

    .line 964
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onIrisNotificationsListFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 993
    return-void
.end method

.method public onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 850
    if-nez v0, :cond_0

    .line 851
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onActorDetailsAndRelatedFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    return-void

    .line 854
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPersonDetailFetched(ILcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/branches/FalkorPerson;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 861
    if-nez v0, :cond_0

    .line 862
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onPersonRelatedFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPersonRelatedFetched(ILcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 782
    if-nez v0, :cond_0

    .line 783
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onPostPlayImpressionLogged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    return-void

    .line 786
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPostPlayImpressionLogged(IZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 772
    if-nez v0, :cond_0

    .line 773
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onPostPlayVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_0
    return-void

    .line 776
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onPostPlayVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 906
    if-nez v0, :cond_0

    .line 907
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onQueueAdd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_0
    return-void

    .line 910
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onQueueAdd(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 917
    if-nez v0, :cond_0

    .line 918
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onQueueRemove"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_0
    return-void

    .line 921
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onQueueRemove(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1008
    if-nez v0, :cond_0

    .line 1009
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onScenePositionFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onScenePositionFetched(IILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 950
    if-nez v0, :cond_0

    .line 951
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSearchResultsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSearchResultsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 739
    if-nez v0, :cond_0

    .line 740
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSeasonDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSeasonDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 806
    if-nez v0, :cond_0

    .line 807
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSeasonsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :goto_0
    return-void

    .line 810
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSeasonsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 828
    if-nez v0, :cond_0

    .line 829
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onShowDetailsAndSeasonsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onShowDetailsAndSeasonsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 817
    if-nez v0, :cond_0

    .line 818
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onShowDetailsFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onShowDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 939
    if-nez v0, :cond_0

    .line 940
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onSimilarVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSimilarVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 928
    if-nez v0, :cond_0

    .line 929
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideoHide"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :goto_0
    return-void

    .line 932
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideoHide(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 895
    if-nez v0, :cond_0

    .line 896
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideoRatingSet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_0
    return-void

    .line 899
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideoRatingSet(ILcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 688
    if-nez v0, :cond_0

    .line 689
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideoSummaryFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideoSummaryFetched(ILcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAccess;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAccess;->access$000(Lcom/netflix/mediaclient/service/falkor/FalkorAccess;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 666
    if-nez v0, :cond_0

    .line 667
    const-string/jumbo v0, "FalkorAccess"

    const-string/jumbo v1, "No client callback found for onVideosFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAccess$BrowseAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

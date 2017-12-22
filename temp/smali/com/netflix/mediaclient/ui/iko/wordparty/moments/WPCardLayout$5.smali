.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "WPCardLayout.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field final synthetic val$videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->val$videoUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 632
    invoke-super/range {p0 .. p7}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 633
    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->getDeepError()Ljava/util/List;

    move-result-object v0

    .line 642
    :goto_0
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v4, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 646
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoVideoLoadEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 667
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 640
    goto :goto_0

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 658
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->val$videoUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoVideoPlaybackStarted(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoVideoLoadEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;JJ)V

    .line 664
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->showVideo()V

    goto :goto_1
.end method

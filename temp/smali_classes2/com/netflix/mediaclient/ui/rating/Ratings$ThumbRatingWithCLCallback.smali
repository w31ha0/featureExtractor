.class public abstract Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "Ratings.java"


# instance fields
.field private final mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 146
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;->mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 147
    return-void
.end method


# virtual methods
.method protected abstract onThumbRatingError(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected abstract onThumbRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;)V
.end method

.method public final onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 153
    const-string/jumbo v5, "thumb"

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;->mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getMatchPercentage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;->mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNewForPvr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 156
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 157
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;->getUserThumbRating()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;->onThumbRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;)V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v2

    .line 161
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;->onThumbRatingError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

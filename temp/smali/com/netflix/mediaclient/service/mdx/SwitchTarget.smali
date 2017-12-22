.class public final Lcom/netflix/mediaclient/service/mdx/SwitchTarget;
.super Ljava/lang/Object;
.source "SwitchTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxSwitchTarget"


# instance fields
.field private mBeginSwitchTarget:Z

.field mCallback:Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;

.field private mNewUuid:Ljava/lang/String;

.field private mPreviewPinVerified:Z

.field private mStartTime:I

.field private mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

.field private mTrackId:I

.field private mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    .line 29
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mCallback:Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;

    .line 30
    return-void
.end method


# virtual methods
.method public startSwitch(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;IIZ)V
    .locals 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "nf_mdxSwitchTarget"

    const-string/jumbo v1, "switching already undergoing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string/jumbo v0, "nf_mdxSwitchTarget"

    const-string/jumbo v1, "current target is not a mdx target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    .line 41
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 43
    iput p4, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mStartTime:I

    .line 44
    iput p5, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTrackId:I

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->playerStop(Ljava/lang/String;)V

    .line 47
    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mPreviewPinVerified:Z

    goto :goto_0
.end method

.method public targetPlaybackStopped(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mCallback:Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;->onSetToNewTarget(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTargeManger:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mNewUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mTrackId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v4, v4, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mStartTime:I

    iget-boolean v6, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mPreviewPinVerified:Z

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 59
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->mBeginSwitchTarget:Z

    goto :goto_0
.end method

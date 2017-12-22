.class public Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;
.super Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;
.source "EpisodesFrag.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

.field playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 241
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;-><init>(Landroid/content/Context;I)V

    .line 233
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->clickListener:Landroid/view/View$OnClickListener;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    return-object v0
.end method


# virtual methods
.method protected setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 289
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V

    .line 291
    const v0, 0x7f100024

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->setTag(ILjava/lang/Object;)V

    .line 292
    const v0, 0x7f100025

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->setTag(ILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    return-void
.end method

.method protected updateDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$100(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 276
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->isFullyDownloadedAndNotWatchable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playButton:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0
.end method

.class public abstract Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;
.super Landroid/widget/RelativeLayout;
.source "AbsEpisodeView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/netflix/mediaclient/ui/details/IEpisodeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Landroid/widget/Checkable;",
        "Lcom/netflix/mediaclient/ui/details/IEpisodeView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EpisodeRowView"


# instance fields
.field protected checked:Z

.field protected episodeBadge:Landroid/widget/TextView;

.field protected episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field protected episodeNumber:Landroid/widget/TextView;

.field protected episodeTime:Landroid/widget/TextView;

.field private isCheckable:Z

.field protected isCurrentEpisode:Z

.field protected isNSRE:Z

.field protected playButton:Landroid/widget/ImageView;

.field protected progressBar:Landroid/widget/ProgressBar;

.field protected progressVal:I

.field private final resId:I

.field protected synopsis:Landroid/widget/TextView;

.field protected title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isNSRE:Z

    .line 54
    iput p2, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->resId:I

    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->init()V

    .line 56
    return-void
.end method

.method public static createEpisodeDuration(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createEpisodeNumber(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090141

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isCheckable:Z

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->resId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViews()V

    .line 65
    return-void
.end method

.method private updateCheckability(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 1

    .prologue
    .line 249
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isCheckable:Z

    .line 250
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeBadge:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f1000b8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->title:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f1000b7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeNumber:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f1000b9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->synopsis:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f1000b1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->playButton:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 74
    const v0, 0x7f1000b3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    .line 75
    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    .line 76
    return-void
.end method

.method protected getDefaultSynopsisVisibility()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x8

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->checked:Z

    return v0
.end method

.method protected playEpisode(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListenerProvider;

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListenerProvider;

    .line 84
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListenerProvider;->getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    .line 90
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 91
    invoke-interface {v1, p1, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;->onEpisodeSelectedForPlayback(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string/jumbo v0, "EpisodeRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No EpisodeRowListener provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    const-string/jumbo v0, "EpisodeRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Context is not an EpisodeRowListenerProvider, context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->checked:Z

    .line 112
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isCheckable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->synopsis:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 114
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->synopsis:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->updateProgressBar()V

    .line 120
    return-void

    :cond_2
    move v0, v1

    .line 112
    goto :goto_0

    :cond_3
    move v2, v3

    .line 114
    goto :goto_1

    :cond_4
    move v1, v3

    .line 117
    goto :goto_2
.end method

.method protected abstract setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->setChecked(Z)V

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->episodeIsNSRE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isNSRE:Z

    .line 197
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isCurrentEpisode:Z

    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 200
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 201
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 202
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 203
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/TimeUtils;->convertSecondsToMinutes(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 198
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isNSRE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->createEpisodeNumber(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeNumber:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setSecondaryTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0f00bd

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 220
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeBadges()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->toggleEpisodeBadge(Ljava/util/List;Landroid/widget/TextView;)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 226
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setSecondaryTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 239
    :cond_4
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 242
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->updateDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    .line 244
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->setChecked(Z)V

    .line 245
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->updateCheckability(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    goto/16 :goto_0

    .line 213
    :cond_5
    const v0, 0x7f0f00ca

    goto :goto_1

    .line 230
    :cond_6
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->createEpisodeDuration(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->episodeTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getBookmarkPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 254
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v2

    if-lez v2, :cond_0

    mul-int/lit8 v0, v1, 0x64

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    div-int/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressVal:I

    .line 255
    return-void
.end method

.method protected abstract updateDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
.end method

.method protected updateProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressVal:I

    if-gtz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0201de

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->isCurrentEpisode:Z

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressVal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->progressVal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method protected updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->synopsis:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->synopsis:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->getDefaultSynopsisVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->synopsis:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setSecondaryTextColorIfApplicable(Landroid/widget/TextView;)V

    goto :goto_0
.end method

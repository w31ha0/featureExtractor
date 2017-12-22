.class public Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;
.super Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.source "VideoDetailsViewGroup_Ab7994.java"


# instance fields
.field private basicInfoMaturity:Landroid/widget/TextView;

.field private basicInfoNumSeasons:Landroid/widget/TextView;

.field private basicInfoYear:Landroid/widget/TextView;

.field private dataSelectorGroup:Landroid/widget/RadioGroup;

.field private firstTabContainer:Landroid/widget/RadioButton;

.field private firstTabSelector:Landroid/view/View;

.field private secondTabContainer:Landroid/widget/RadioButton;

.field private secondTabSelector:Landroid/view/View;

.field private shareButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method private setupRadioButtons()V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;)V

    .line 284
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_1
    return-void
.end method

.method private setupTabViews()V
    .locals 7

    .prologue
    const v6, 0x7f10019d

    const v5, 0x7f10019c

    const v4, 0x7f1000c7

    const v3, 0x7f1000c6

    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 108
    :cond_0
    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->dataSelectorGroup:Landroid/widget/RadioGroup;

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TrailerUtils;->shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    .line 113
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    .line 116
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    goto :goto_1

    .line 122
    :cond_2
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    .line 123
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TrailerUtils;->shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabSelector:Landroid/view/View;

    .line 127
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    .line 134
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 138
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->setupRadioButtons()V

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabSelector:Landroid/view/View;

    .line 130
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    goto :goto_3
.end method

.method private static updateShareButtonLayout(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 203
    if-eqz p0, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method protected createActionButtons(Z)V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->actionButtonsCreated:Z

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->myListMdp:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->myListSdp:Landroid/view/ViewStub;

    if-nez v0, :cond_2

    :cond_0
    move-object v1, p0

    .line 219
    :goto_0
    const v0, 0x7f100265

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->addToMyListGroup:Landroid/view/View;

    .line 220
    const v0, 0x7f100266

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->addToMyList:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f100267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->addToMyListLabel:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f10020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 223
    const v0, 0x7f1003c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    .line 224
    const v0, 0x7f1003c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->shareButton:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setRtlLayoutDirectionIfApplicable(Landroid/view/View;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->actionButtonsCreated:Z

    .line 229
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->updateVideoActionsLayout()V

    .line 231
    :cond_1
    return-void

    .line 216
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->myListMdp:Landroid/view/ViewStub;

    .line 217
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->myListSdp:Landroid/view/ViewStub;

    goto :goto_1
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f1003d7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->myListMdp:Landroid/view/ViewStub;

    .line 74
    const v0, 0x7f1003d4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->myListSdp:Landroid/view/ViewStub;

    .line 76
    const v0, 0x7f1003bf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->videoActionsContainer:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x7f1000a9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->matchPercentage:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f1003cd

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoYear:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f1003ce

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoMaturity:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f1003cf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoNumSeasons:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->episodeBadge:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->episodeTitle:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->supplemental:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->synopsis:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f10021c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->starring:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->creators:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    .line 91
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->title:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1003d1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->imgGroup:Landroid/view/ViewGroup;

    .line 93
    const v0, 0x7f1001f0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->backgroundImg:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->relatedTitle:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1003cb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoBadges:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->footerViewGroup:Landroid/view/ViewGroup;

    .line 99
    const v0, 0x7f1003c2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->copyright:Landroid/view/ViewGroup;

    .line 100
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->play:Landroid/view/View;

    .line 101
    return-void
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f030123

    return v0
.end method

.method protected setFirstTabAsSelected()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00e0

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabSelector:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00e1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabSelector:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    :cond_1
    return-void
.end method

.method protected setSecondTabAsSelected()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabSelector:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00e0

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabSelector:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->secondTabContainer:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00e1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabSelector:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->firstTabContainer:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    :cond_1
    return-void
.end method

.method protected updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 6

    .prologue
    .line 236
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoYear:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoYear:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoMaturity:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoMaturity:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCertification()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoNumSeasons:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->basicInfoNumSeasons:Landroid/widget/TextView;

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getNumSeasonsLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_2
    return-void
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 149
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->setupTabViews()V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->shareButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->shareButton:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$1;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected updateVideoActionsLayout()V
    .locals 6

    .prologue
    const v5, 0x7f0a0206

    const/4 v1, 0x4

    .line 163
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->videoActionsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->videoActionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only 4 buttons expected in the video actions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->shouldRenderDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 173
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    .line 175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 189
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->videoActionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 190
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->videoActionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 169
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 184
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 179
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 193
    :cond_3
    if-ne v0, v1, :cond_4

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->updateButtonLayout(Landroid/view/View;I)V

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->updateButtonLayout(Landroid/view/View;I)V

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->addToMyListGroup:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->updateButtonLayout(Landroid/view/View;I)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->shareButton:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->updateShareButtonLayout(Landroid/view/View;I)V

    .line 200
    :cond_5
    return-void
.end method

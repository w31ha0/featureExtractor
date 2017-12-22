.class Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;
.source "KidsCharacterAdapter.java"


# instance fields
.field private final characterView:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

.field private final container:Landroid/widget/FrameLayout;

.field private loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 119
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->container:Landroid/widget/FrameLayout;

    .line 121
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->characterView:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->characterView:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/LoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 126
    return-void
.end method


# virtual methods
.method bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/model/branches/FalkorKidsCharacter;IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->characterView:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->characterView:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    .line 132
    return-void
.end method

.method public loading(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;IZ)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->characterView:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;->setVisibility(I)V

    .line 137
    return-void
.end method

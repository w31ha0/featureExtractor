.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BarkerSeasonsDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "sdf"


# instance fields
.field private final context:Landroid/content/Context;

.field private curSelectedPosition:I

.field private listener:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;

.field private final seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->seasons:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->listener:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->setItemClicked(I)V

    return-void
.end method

.method private setItemClicked(I)V
    .locals 1

    .prologue
    .line 79
    iput p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->curSelectedPosition:I

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->listener:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;->onSeasonSelected(I)V

    .line 81
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->onBindViewHolder(Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v2, p1, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p1, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->curSelectedPosition:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 51
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->selectIndicator:Landroid/view/View;

    iget v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->curSelectedPosition:I

    if-ne v2, p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public updateSeasonData(Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 66
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->seasons:Ljava/util/List;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getSeasonNumber()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 69
    iput v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->curSelectedPosition:I

    .line 64
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->notifyDataSetChanged()V

    .line 75
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->curSelectedPosition:I

    return v0
.end method

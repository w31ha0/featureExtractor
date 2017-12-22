.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BarkerSeasonsDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field selectIndicator:Landroid/view/View;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;

    .line 89
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    const v0, 0x7f10020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->text:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f10020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->selectIndicator:Landroid/view/View;

    .line 93
    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->access$000(Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;I)V

    .line 104
    return-void
.end method

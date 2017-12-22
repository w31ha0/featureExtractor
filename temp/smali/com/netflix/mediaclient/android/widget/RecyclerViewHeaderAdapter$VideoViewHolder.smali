.class Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewHeaderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 408
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->this$0:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 409
    invoke-static {p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->access$000(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 414
    if-eqz p2, :cond_0

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 416
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->this$0:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItemChecked(I)V

    .line 426
    return-void
.end method

.class public Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OfflineBaseAdapter.java"


# instance fields
.field public allProfilesButton:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 247
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    .line 248
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 249
    const v0, 0x7f100284

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$FooterViewHolderData;->allProfilesButton:Landroid/widget/TextView;

    .line 250
    return-void
.end method

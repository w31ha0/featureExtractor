.class Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$1;
.super Ljava/lang/Object;
.source "OfflineBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->getAdapterPosition()I

    move-result v2

    .line 269
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 270
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mRowClickListener:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$1;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->playIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-interface {v3, v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;->onRowClicked(IZ)V

    .line 274
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    const-string/jumbo v3, "OfflineBaseAdapter"

    const-string/jumbo v4, "clickListener position=%d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

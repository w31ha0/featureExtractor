.class Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;
.super Ljava/lang/Object;
.source "LoLoMoFrag.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    .line 287
    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string/jumbo v1, "LoLoMoFrag"

    const-string/jumbo v2, "View moved to scrap heap - notifying holder"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->onViewMovedToScrapHeap()V

    goto :goto_0
.end method

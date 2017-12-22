.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;
.super Ljava/lang/Object;
.source "KongGearSelectionScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final index:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;I)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput p2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->index:I

    .line 504
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 508
    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 510
    const/4 v0, 0x1

    move v1, v0

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 516
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$800(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->removeHandlerCallbacksAndMessages()V

    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->index:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getVideoId()I

    move-result v2

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    .line 521
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v2

    .line 522
    :goto_2
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->startPlayback(IILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    .line 524
    :cond_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setUserInteraction()V

    move v1, v2

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    goto :goto_1

    .line 521
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v2

    goto :goto_2
.end method

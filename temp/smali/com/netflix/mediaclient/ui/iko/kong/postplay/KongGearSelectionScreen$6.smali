.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;
.super Ljava/lang/Object;
.source "KongGearSelectionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isPostPlayPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const-string/jumbo v0, "KongGearSelectionScreen"

    const-string/jumbo v1, "Post play is in paused state. Ignoring request to countdown timer for gear selection."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1010(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    if-gez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 467
    goto :goto_1

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

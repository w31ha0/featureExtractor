.class Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;
.super Ljava/lang/Object;
.source "PostPlayForPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field background:Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

.field index:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;ILcom/netflix/mediaclient/ui/player/PostPlayBackground;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->index:I

    .line 206
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->background:Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

    .line 207
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Listener should be attached to PostPlayItemBasic view, it was attached to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 219
    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    .line 220
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->play()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    .line 229
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->setSelected(Z)V

    .line 225
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 233
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->setSelected(Z)V

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Video was full size, scale down"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->access$100(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;)V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->index:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;I)V

    goto :goto_0
.end method

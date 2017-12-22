.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;

.field final synthetic val$firstVisiblePosition:I

.field final synthetic val$layoutManager:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;ILandroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;

    iput p2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;->val$firstVisiblePosition:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;->val$layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 436
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;->val$firstVisiblePosition:I

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;->val$layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 439
    :cond_0
    return-void
.end method

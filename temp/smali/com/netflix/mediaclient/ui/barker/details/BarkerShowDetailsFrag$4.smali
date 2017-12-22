.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 430
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 432
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4$1;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;ILandroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 444
    return-void
.end method

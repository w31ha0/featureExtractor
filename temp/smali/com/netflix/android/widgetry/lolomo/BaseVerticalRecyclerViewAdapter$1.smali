.class Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseVerticalRecyclerViewAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;->access$000(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onParentScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

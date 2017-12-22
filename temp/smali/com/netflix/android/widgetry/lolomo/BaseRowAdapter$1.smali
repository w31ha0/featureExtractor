.class Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseRowAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 52
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 57
    return-void
.end method

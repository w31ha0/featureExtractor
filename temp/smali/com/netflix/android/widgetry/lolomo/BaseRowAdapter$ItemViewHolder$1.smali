.class Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "BaseRowAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

.field final synthetic val$config:Lcom/netflix/android/widgetry/lolomo/RowConfig;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;->val$config:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->access$000(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 243
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;->this$0:Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;->val$config:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->layoutCoverView(Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 244
    return-void
.end method

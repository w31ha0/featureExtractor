.class Lcom/netflix/android/tooltips/Tooltip$2;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/tooltips/Tooltip;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/android/tooltips/Tooltip;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netflix/android/tooltips/Tooltip$2;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    iput-object p2, p0, Lcom/netflix/android/tooltips/Tooltip$2;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$2;->val$target:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$2;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$100(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/TooltipLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$2;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$100(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/TooltipLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip$2;->val$target:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->setTarget(Landroid/view/View;)V

    .line 131
    :cond_1
    return-void
.end method

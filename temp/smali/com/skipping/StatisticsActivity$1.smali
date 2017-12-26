.class Lcom/skipping/StatisticsActivity$1;
.super Ljava/lang/Object;
.source "StatisticsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/StatisticsActivity;->ShowListBtt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/StatisticsActivity;


# direct methods
.method constructor <init>(Lcom/skipping/StatisticsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/StatisticsActivity$1;->this$0:Lcom/skipping/StatisticsActivity;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/skipping/StatisticsActivity$1;->this$0:Lcom/skipping/StatisticsActivity;

    invoke-virtual {v0, p3}, Lcom/skipping/StatisticsActivity;->delete_dialog(I)V

    .line 806
    const/4 v0, 0x1

    return v0
.end method

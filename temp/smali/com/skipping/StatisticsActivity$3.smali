.class Lcom/skipping/StatisticsActivity$3;
.super Ljava/lang/Object;
.source "StatisticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/StatisticsActivity;->delete_dialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/StatisticsActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/skipping/StatisticsActivity;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    iput p2, p0, Lcom/skipping/StatisticsActivity$3;->val$position:I

    iput-object p3, p0, Lcom/skipping/StatisticsActivity$3;->val$dialog:Landroid/app/Dialog;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 861
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    iget v2, v2, Lcom/skipping/StatisticsActivity;->list_mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 863
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    iget-object v2, v2, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    iget v3, p0, Lcom/skipping/StatisticsActivity$3;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldatabase/MyWorkouts;

    invoke-virtual {v2}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v0

    .line 867
    .local v0, "time":J
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    iget-object v2, v2, Lcom/skipping/StatisticsActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    invoke-virtual {v2, v0, v1}, Ldatabase/DBConnectorWorkouts;->delete_date(J)V

    .line 869
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    invoke-virtual {v2}, Lcom/skipping/StatisticsActivity;->ShowListBtt()V

    .line 887
    :goto_0
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 889
    return-void

    .line 879
    .end local v0    # "time":J
    :cond_0
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    iget-object v2, v2, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    iget v3, p0, Lcom/skipping/StatisticsActivity$3;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldatabase/MyWeight;

    invoke-virtual {v2}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v0

    .line 881
    .restart local v0    # "time":J
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    iget-object v2, v2, Lcom/skipping/StatisticsActivity;->mDBConnectorWeight:Ldatabase/DBConnectorWeight;

    invoke-virtual {v2, v0, v1}, Ldatabase/DBConnectorWeight;->delete_date(J)V

    .line 883
    iget-object v2, p0, Lcom/skipping/StatisticsActivity$3;->this$0:Lcom/skipping/StatisticsActivity;

    invoke-virtual {v2}, Lcom/skipping/StatisticsActivity;->ShowListBtt()V

    goto :goto_0
.end method

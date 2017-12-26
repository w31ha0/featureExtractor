.class Lcom/skipping/TrainingActivity$8;
.super Ljava/lang/Object;
.source "TrainingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/TrainingActivity;->ShowStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/TrainingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/skipping/TrainingActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    iput-object p2, p0, Lcom/skipping/TrainingActivity$8;->val$dialog:Landroid/app/Dialog;

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 742
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 746
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/skipping/TrainingActivity;->workout_end_time:J

    .line 748
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-virtual {v1}, Lcom/skipping/TrainingActivity;->SaveToBD()V

    .line 750
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-virtual {v1}, Lcom/skipping/TrainingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 751
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    iput-boolean v4, v1, Lcom/skipping/TrainingActivity;->isStarted:Z

    .line 752
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    iget-object v1, v1, Lcom/skipping/TrainingActivity;->buttonStart:Landroid/widget/Button;

    iget-object v2, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-static {v1}, Lcom/skipping/TrainingActivity;->access$1(Lcom/skipping/TrainingActivity;)Landroid/hardware/SensorManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-static {v1}, Lcom/skipping/TrainingActivity;->access$1(Lcom/skipping/TrainingActivity;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-virtual {v1}, Lcom/skipping/TrainingActivity;->stopRepeatingTask()V

    .line 760
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-static {v1, v4}, Lcom/skipping/TrainingActivity;->access$2(Lcom/skipping/TrainingActivity;I)V

    .line 761
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/skipping/TrainingActivity;->calories_workoute:F

    .line 763
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    iput v4, v1, Lcom/skipping/TrainingActivity;->stepsCount:I

    .line 767
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    const-class v2, Lcom/skipping/AfterTrainingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "workout_start_time"

    iget-object v2, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    iget-wide v2, v2, Lcom/skipping/TrainingActivity;->workout_start_time:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 769
    iget-object v1, p0, Lcom/skipping/TrainingActivity$8;->this$0:Lcom/skipping/TrainingActivity;

    invoke-virtual {v1, v0}, Lcom/skipping/TrainingActivity;->startActivity(Landroid/content/Intent;)V

    .line 773
    return-void
.end method

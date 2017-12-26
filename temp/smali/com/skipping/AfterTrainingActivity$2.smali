.class Lcom/skipping/AfterTrainingActivity$2;
.super Ljava/lang/Object;
.source "AfterTrainingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/AfterTrainingActivity;->Jump(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/AfterTrainingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/skipping/AfterTrainingActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iput-object p2, p0, Lcom/skipping/AfterTrainingActivity$2;->val$dialog:Landroid/app/Dialog;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    iget-object v1, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget-object v1, v1, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    invoke-virtual {v1}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget-object v3, v3, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    invoke-virtual {v3}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget v5, v5, Lcom/skipping/AfterTrainingActivity;->Jumps:I

    iget-object v6, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget-object v6, v6, Lcom/skipping/AfterTrainingActivity;->mw:Ldatabase/MyWorkouts;

    invoke-virtual {v6}, Ldatabase/MyWorkouts;->getCalories()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ldatabase/DBConnectorWorkouts;->updateStartTime(JJII)I

    .line 300
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget-object v1, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget v1, v1, Lcom/skipping/AfterTrainingActivity;->Jumps:I

    iput v1, v0, Lcom/skipping/AfterTrainingActivity;->JumpsFromTraining:I

    .line 302
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget-object v0, v0, Lcom/skipping/AfterTrainingActivity;->ButtonJump:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/skipping/AfterTrainingActivity$2;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget v2, v2, Lcom/skipping/AfterTrainingActivity;->Jumps:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 306
    return-void
.end method

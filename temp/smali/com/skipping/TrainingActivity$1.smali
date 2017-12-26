.class Lcom/skipping/TrainingActivity$1;
.super Ljava/lang/Object;
.source "TrainingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/TrainingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/TrainingActivity;


# direct methods
.method constructor <init>(Lcom/skipping/TrainingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/TrainingActivity$1;->this$0:Lcom/skipping/TrainingActivity;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/skipping/TrainingActivity$1;->this$0:Lcom/skipping/TrainingActivity;

    invoke-virtual {v0}, Lcom/skipping/TrainingActivity;->doTimerTask()V

    .line 168
    iget-object v0, p0, Lcom/skipping/TrainingActivity$1;->this$0:Lcom/skipping/TrainingActivity;

    invoke-static {v0}, Lcom/skipping/TrainingActivity;->access$0(Lcom/skipping/TrainingActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/skipping/TrainingActivity$1;->this$0:Lcom/skipping/TrainingActivity;

    invoke-static {v0}, Lcom/skipping/TrainingActivity;->access$0(Lcom/skipping/TrainingActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/skipping/TrainingActivity$1;->this$0:Lcom/skipping/TrainingActivity;

    iget-object v1, v1, Lcom/skipping/TrainingActivity;->mStatusChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    :cond_0
    return-void
.end method

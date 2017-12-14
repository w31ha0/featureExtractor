.class Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;
.super Landroid/os/Handler;
.source "StresstestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->trigger:Z

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->trigger:Z

    .line 141
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->fail:Z

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    iget v1, v1, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->threadId:I

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/StresstestActivity;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity;I)V

    .line 148
    :cond_2
    :goto_0
    return-void

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/StresstestActivity;->access$1(Lcom/tutusw/phonespeedup/StresstestActivity;)V

    goto :goto_0
.end method

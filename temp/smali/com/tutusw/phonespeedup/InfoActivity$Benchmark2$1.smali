.class Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;
.super Landroid/os/Handler;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    .line 317
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 321
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    iget-wide v1, v1, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->finalTime:D

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/InfoActivity;->access$4(Lcom/tutusw/phonespeedup/InfoActivity;I)V

    .line 323
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->access$0(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->access$0(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

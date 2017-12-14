.class Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;
.super Landroid/os/Handler;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    .line 267
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 270
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 271
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d8a\u4f4e\u8d8a\u5feb: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    iget-wide v2, v2, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->finalTime:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6beb\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/InfoActivity;->access$2(Lcom/tutusw/phonespeedup/InfoActivity;Ljava/lang/String;)V

    .line 272
    const-string v0, "Speedup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91c7\u53d6\u5feb\u901f\u57fa\u51c6\u6d4b\u8bd5 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    iget-wide v2, v2, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->finalTime:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "autorefresh"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 275
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v0

    iput-boolean v4, v0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$0(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;->this$1:Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    goto :goto_0
.end method

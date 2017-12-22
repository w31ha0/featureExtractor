.class Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;
.super Ljava/lang/Object;
.source "TimeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$000(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$110(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)I

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$200(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$200(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$100(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)I

    move-result v0

    if-lez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$300(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$400(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->access$400(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;->this$0:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    goto :goto_0
.end method

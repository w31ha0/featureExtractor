.class Lcom/tutusw/phonespeedup/StresstestActivity$1;
.super Ljava/lang/Object;
.source "StresstestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/StresstestActivity;->runBenchmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/StresstestActivity;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/StresstestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/StresstestActivity$1;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$1;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    .line 47
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$1;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$1;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 49
    :cond_0
    return-void
.end method

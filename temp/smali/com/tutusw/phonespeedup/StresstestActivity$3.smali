.class Lcom/tutusw/phonespeedup/StresstestActivity$3;
.super Ljava/lang/Object;
.source "StresstestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/StresstestActivity;->benchSucceed()V
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
    iput-object p1, p0, Lcom/tutusw/phonespeedup/StresstestActivity$3;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$3;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$3;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StresstestActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$3;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/StresstestActivity;->finish()V

    .line 96
    return-void
.end method

.class Lcom/tutusw/phonespeedup/InfoActivity$1;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/InfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/InfoActivity;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/InfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/InfoActivity$1;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$1;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$1;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/InfoActivity;->access$5(Lcom/tutusw/phonespeedup/InfoActivity;)V

    .line 75
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$1;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$1;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    return-void
.end method

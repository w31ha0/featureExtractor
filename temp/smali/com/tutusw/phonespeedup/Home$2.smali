.class Lcom/tutusw/phonespeedup/Home$2;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/Home;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/Home;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/Home$2;->this$0:Lcom/tutusw/phonespeedup/Home;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$2;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Home;->access$0(Lcom/tutusw/phonespeedup/Home;)V

    .line 293
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$2;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$2;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void
.end method

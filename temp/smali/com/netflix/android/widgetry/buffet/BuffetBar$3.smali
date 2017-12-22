.class Lcom/netflix/android/widgetry/buffet/BuffetBar$3;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$3;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 5

    .prologue
    .line 507
    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$3;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method

.method public show(Z)V
    .locals 4

    .prologue
    .line 502
    sget-object v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/netflix/android/widgetry/buffet/BuffetBar;->sHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$3;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

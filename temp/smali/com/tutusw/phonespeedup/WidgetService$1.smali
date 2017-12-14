.class Lcom/tutusw/phonespeedup/WidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/WidgetService;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/WidgetService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tutusw/phonespeedup/WidgetService;->i:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/WidgetService;->i:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tutusw/phonespeedup/WidgetService;->screenoff:Z

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/WidgetService;->i:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tutusw/phonespeedup/WidgetService;->screenoff:Z

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/WidgetService;->i:Ljava/lang/String;

    const-string v1, "Speedup.intent.action.updatewidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService$1;->this$0:Lcom/tutusw/phonespeedup/WidgetService;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/WidgetService;->access$0(Lcom/tutusw/phonespeedup/WidgetService;)V

    goto :goto_0
.end method

.class Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;
.super Ljava/lang/Object;
.source "LoLoMoFocusHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->access$000(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "LoLoMoFocusHandler"

    const-string/jumbo v1, "enabling touch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->access$002(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;Z)Z

    .line 62
    const/4 v0, 0x0

    return v0
.end method

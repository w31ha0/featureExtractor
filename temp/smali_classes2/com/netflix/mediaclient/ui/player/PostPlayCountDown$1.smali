.class Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;
.super Ljava/lang/Object;
.source "PostPlayCountDown.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->refreshTimerText()V

    .line 98
    return-void
.end method

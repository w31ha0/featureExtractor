.class Lcom/netflix/mediaclient/ui/player/PostPlay$6;
.super Ljava/lang/Object;
.source "PostPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$6;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$6;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$6;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->getTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onTick(I)V

    .line 417
    return-void
.end method

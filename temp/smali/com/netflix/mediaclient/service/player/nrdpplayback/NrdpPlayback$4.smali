.class Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$4;
.super Ljava/lang/Object;
.source "NrdpPlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$4;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$4;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$400(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$4;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$400(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->cancelNotification()V

    .line 684
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$4;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$402(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    .line 686
    :cond_0
    return-void
.end method

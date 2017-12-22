.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

.field final synthetic val$movieId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;->val$movieId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;->val$movieId:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$1000(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V

    .line 324
    return-void
.end method

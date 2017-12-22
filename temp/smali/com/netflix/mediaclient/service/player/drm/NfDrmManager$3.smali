.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

.field final synthetic val$keepInUseSession:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Z)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;->val$keepInUseSession:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 304
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;->val$keepInUseSession:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->close()V

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$800(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    return-void
.end method

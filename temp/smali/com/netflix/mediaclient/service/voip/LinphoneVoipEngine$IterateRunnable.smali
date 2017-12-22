.class final Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;
.super Ljava/lang/Object;
.source "LinphoneVoipEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mLcRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/linphone/core/LinphoneCore;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/linphone/core/LinphoneCore;Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;)V
    .locals 1

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;->mLcRef:Ljava/lang/ref/WeakReference;

    .line 591
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;->mServiceStateRef:Ljava/lang/ref/WeakReference;

    .line 592
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;->mLcRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCore;

    .line 597
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;->mServiceStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 598
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 601
    :cond_0
    return-void
.end method

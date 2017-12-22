.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field final synthetic val$castDevice:Lcom/google/android/gms/cast/CastDevice;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;->val$castDevice:Lcom/google/android/gms/cast/CastDevice;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 421
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send message to cast device, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;->val$castDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;->val$castDevice:Lcom/google/android/gms/cast/CastDevice;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/chromecast/background/Channel;->sendMessage(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)I

    move-result v0

    .line 423
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.class final Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;
.super Ljava/lang/Object;
.source "MdxCastApplication.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SendMessage(), success"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$400(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onMessageSent()V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 108
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SendMessage(), has timed out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$400(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v0

    const-string/jumbo v1, "StatusCodes: TIMEOUT"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToSendMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->access$400(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToSendMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

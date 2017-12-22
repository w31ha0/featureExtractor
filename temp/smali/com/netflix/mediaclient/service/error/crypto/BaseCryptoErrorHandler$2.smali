.class Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;
.super Ljava/lang/Object;
.source "BaseCryptoErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$killApp:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;->this$0:Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;->val$killApp:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;->val$killApp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->setActionToExecuteOnExitIfContentRemovalIsInProgress(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Offline content removal is IN PROGRESS, do NOT kill app yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Offline content removal is not in progress, kill app!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->forceStop(Landroid/content/Context;)V

    goto :goto_0
.end method

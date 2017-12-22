.class Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$1;
.super Ljava/lang/Object;
.source "BaseCryptoErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->forceStop(Landroid/content/Context;)V

    .line 43
    return-void
.end method

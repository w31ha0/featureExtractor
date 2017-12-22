.class Lorg/chromium/base/Promise$1;
.super Lorg/chromium/base/Callback;
.source "Promise.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/Callback",
        "<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/Promise;


# direct methods
.method constructor <init>(Lorg/chromium/base/Promise;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/chromium/base/Promise$1;->this$0:Lorg/chromium/base/Promise;

    invoke-direct {p0}, Lorg/chromium/base/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/chromium/base/Promise$UnhandledRejectionException;

    const-string/jumbo v1, "Promise was rejected without a rejection handler."

    invoke-direct {v0, v1, p1}, Lorg/chromium/base/Promise$UnhandledRejectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/chromium/base/Promise$1;->onResult(Ljava/lang/Exception;)V

    return-void
.end method

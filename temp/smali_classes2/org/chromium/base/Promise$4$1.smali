.class Lorg/chromium/base/Promise$4$1;
.super Lorg/chromium/base/Callback;
.source "Promise.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/Callback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/base/Promise$4;


# direct methods
.method constructor <init>(Lorg/chromium/base/Promise$4;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lorg/chromium/base/Promise$4$1;->this$1:Lorg/chromium/base/Promise$4;

    invoke-direct {p0}, Lorg/chromium/base/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lorg/chromium/base/Promise$4$1;->this$1:Lorg/chromium/base/Promise$4;

    iget-object v0, v0, Lorg/chromium/base/Promise$4;->val$promise:Lorg/chromium/base/Promise;

    invoke-virtual {v0, p1}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.class Lorg/chromium/base/Promise$5;
.super Ljava/lang/Object;
.source "Promise.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/base/Promise;

.field final synthetic val$callback:Lorg/chromium/base/Callback;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lorg/chromium/base/Promise$5;->this$0:Lorg/chromium/base/Promise;

    iput-object p2, p0, Lorg/chromium/base/Promise$5;->val$callback:Lorg/chromium/base/Callback;

    iput-object p3, p0, Lorg/chromium/base/Promise$5;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/chromium/base/Promise$5;->val$callback:Lorg/chromium/base/Callback;

    iget-object v1, p0, Lorg/chromium/base/Promise$5;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 321
    return-void
.end method

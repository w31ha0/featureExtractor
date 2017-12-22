.class Lorg/chromium/net/impl/CronetUrlRequestContext$1;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field final synthetic val$builder:Lorg/chromium/net/impl/CronetEngineBuilderImpl;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/CronetEngineBuilderImpl;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$1;->val$builder:Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$1;->val$builder:Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/net/impl/CronetLibraryLoader;->ensureInitializedOnMainThread(Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->access$000(Lorg/chromium/net/impl/CronetUrlRequestContext;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$1;->this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetUrlRequestContext;->access$100(Lorg/chromium/net/impl/CronetUrlRequestContext;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/chromium/net/impl/CronetUrlRequestContext;->access$200(Lorg/chromium/net/impl/CronetUrlRequestContext;J)V

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

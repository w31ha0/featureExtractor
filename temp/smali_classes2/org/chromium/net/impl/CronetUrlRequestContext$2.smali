.class Lorg/chromium/net/impl/CronetUrlRequestContext$2;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field final synthetic val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

.field final synthetic val$rttMs:I

.field final synthetic val$source:I

.field final synthetic val$whenMs:J


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;IJI)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    iput p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$rttMs:I

    iput-wide p4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$whenMs:J

    iput p6, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 635
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$rttMs:I

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$whenMs:J

    iget v4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$source:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->onRttObservation(IJI)V

    .line 636
    return-void
.end method

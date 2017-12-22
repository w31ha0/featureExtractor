.class Lorg/chromium/net/impl/CronetBidirectionalStream$5;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

.field final synthetic val$exception:Lorg/chromium/net/CronetException;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/CronetException;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->val$exception:Lorg/chromium/net/CronetException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->val$exception:Lorg/chromium/net/CronetException;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$1200(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/CronetException;)V

    .line 788
    return-void
.end method

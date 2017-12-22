.class Lorg/chromium/base/JavaHandlerThread$1;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/base/JavaHandlerThread;

.field final synthetic val$nativeEvent:J

.field final synthetic val$nativeThread:J


# direct methods
.method constructor <init>(Lorg/chromium/base/JavaHandlerThread;JJ)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/chromium/base/JavaHandlerThread$1;->this$0:Lorg/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeThread:J

    iput-wide p4, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread$1;->this$0:Lorg/chromium/base/JavaHandlerThread;

    iget-wide v2, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeThread:J

    iget-wide v4, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeEvent:J

    invoke-static {v0, v2, v3, v4, v5}, Lorg/chromium/base/JavaHandlerThread;->access$000(Lorg/chromium/base/JavaHandlerThread;JJ)V

    .line 39
    return-void
.end method

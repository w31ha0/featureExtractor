.class public abstract Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final executionStyle:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

.field private final executionThread:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->executionStyle:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    .line 212
    iput-object p2, p0, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->executionThread:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    .line 213
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->executionThread:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    return-object v0
.end method


# virtual methods
.method public abstract execute(Ljava/lang/Runnable;)V
.end method

.method public getExecutionStyle()Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->executionStyle:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    return-object v0
.end method

.method public getExecutionThread()Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->executionThread:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    return-object v0
.end method

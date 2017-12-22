.class Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;
.super Ljava/lang/Object;
.source "LoggingScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;->this$0:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;Lcom/netflix/mediaclient/android/widget/LoggingScrollView$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;-><init>(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;->this$0:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v2}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->access$100(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;->this$0:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->access$102(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;J)J

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;->this$0:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->access$200(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;->this$0:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v0, p0, v4, v5}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

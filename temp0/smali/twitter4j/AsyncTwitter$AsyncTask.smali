.class abstract Ltwitter4j/AsyncTwitter$AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTwitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/AsyncTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncTask"
.end annotation


# instance fields
.field listener:Ltwitter4j/TwitterListener;

.field method:Ltwitter4j/TwitterMethod;

.field private final this$0:Ltwitter4j/AsyncTwitter;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V
    .locals 0
    .param p2, "method"    # Ltwitter4j/TwitterMethod;
    .param p3, "listener"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 1770
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1771
    iput-object p2, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->method:Ltwitter4j/TwitterMethod;

    .line 1772
    iput-object p3, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    .line 1773
    return-void
.end method


# virtual methods
.method abstract invoke(Ltwitter4j/TwitterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1779
    :try_start_0
    iget-object v1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    invoke-virtual {p0, v1}, Ltwitter4j/AsyncTwitter$AsyncTask;->invoke(Ltwitter4j/TwitterListener;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "te":Ltwitter4j/TwitterException;
    iget-object v1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    if-eqz v1, :cond_0

    .line 1782
    iget-object v1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->method:Ltwitter4j/TwitterMethod;

    invoke-interface {v1, v0, v2}, Ltwitter4j/TwitterListener;->onException(Ltwitter4j/TwitterException;Ltwitter4j/TwitterMethod;)V

    goto :goto_0
.end method

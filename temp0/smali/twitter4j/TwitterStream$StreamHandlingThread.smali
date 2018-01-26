.class abstract Ltwitter4j/TwitterStream$StreamHandlingThread;
.super Ljava/lang/Thread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/TwitterStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "StreamHandlingThread"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "Twitter Stream Handling Thread"


# instance fields
.field private closed:Z

.field stream:Ltwitter4j/StatusStream;

.field private final this$0:Ltwitter4j/TwitterStream;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;)V
    .locals 1

    .prologue
    .line 369
    iput-object p1, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    .line 370
    const-string v0, "Twitter Stream Handling Thread[initializing]"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    .line 372
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 428
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Twitter Stream Handling Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "actualMessage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setName(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Ltwitter4j/TwitterStream;->access$100()Ltwitter4j/internal/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 431
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    const-string v0, "[Disposing thread]"

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract getStream()Ltwitter4j/StatusStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "timeToSleep":I
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v2, :cond_5

    .line 378
    :try_start_0
    iget-boolean v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    if-nez v2, :cond_0

    .line 380
    const-string v2, "[Establishing connection]"

    invoke-direct {p0, v2}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->getStream()Ltwitter4j/StatusStream;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    .line 383
    const/4 v1, 0x0

    .line 384
    const-string v2, "[Receiving stream]"

    invoke-direct {p0, v2}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V

    .line 385
    :goto_1
    iget-boolean v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    iget-object v3, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v3}, Ltwitter4j/TwitterStream;->access$000(Ltwitter4j/TwitterStream;)Ltwitter4j/StatusListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ltwitter4j/StatusStream;->next(Ltwitter4j/StatusListener;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "te":Ltwitter4j/TwitterException;
    iget-boolean v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v2, :cond_0

    .line 391
    if-nez v1, :cond_1

    .line 392
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 393
    const/16 v1, 0x2710

    .line 399
    :cond_1
    :goto_2
    iget-boolean v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v2, :cond_2

    .line 401
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[Waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " milliseconds]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V

    .line 403
    int-to-long v2, v1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 406
    :goto_3
    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-le v2, v4, :cond_4

    const v2, 0x3a980

    :goto_4
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 409
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    .line 410
    invoke-static {}, Ltwitter4j/TwitterStream;->access$100()Ltwitter4j/internal/logging/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v2}, Ltwitter4j/TwitterStream;->access$000(Ltwitter4j/TwitterStream;)Ltwitter4j/StatusListener;

    move-result-object v2

    invoke-interface {v2, v0}, Ltwitter4j/StatusListener;->onException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 395
    :cond_3
    const/16 v1, 0xfa

    goto :goto_2

    .line 406
    :cond_4
    const/16 v2, 0x3e80

    goto :goto_4

    .line 417
    .end local v0    # "te":Ltwitter4j/TwitterException;
    :cond_5
    :try_start_2
    iget-object v2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    invoke-interface {v2}, Ltwitter4j/StatusStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 420
    :goto_5
    return-void

    .line 404
    .restart local v0    # "te":Ltwitter4j/TwitterException;
    :catch_1
    move-exception v2

    goto :goto_3

    .line 418
    .end local v0    # "te":Ltwitter4j/TwitterException;
    :catch_2
    move-exception v2

    goto :goto_5
.end method

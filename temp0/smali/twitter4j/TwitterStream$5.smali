.class Ltwitter4j/TwitterStream$5;
.super Ltwitter4j/TwitterStream$StreamHandlingThread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->filter(Ltwitter4j/FilterQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;

.field private final val$query:Ltwitter4j/FilterQuery;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;Ltwitter4j/FilterQuery;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Ltwitter4j/TwitterStream$5;->this$0:Ltwitter4j/TwitterStream;

    iput-object p2, p0, Ltwitter4j/TwitterStream$5;->val$query:Ltwitter4j/FilterQuery;

    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream$StreamHandlingThread;-><init>(Ltwitter4j/TwitterStream;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Ltwitter4j/TwitterStream$5;->this$0:Ltwitter4j/TwitterStream;

    iget-object v1, p0, Ltwitter4j/TwitterStream$5;->val$query:Ltwitter4j/FilterQuery;

    invoke-virtual {v0, v1}, Ltwitter4j/TwitterStream;->getFilterStream(Ltwitter4j/FilterQuery;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.class Ltwitter4j/TwitterStream$6;
.super Ltwitter4j/TwitterStream$StreamHandlingThread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->filter(I[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;

.field private final val$count:I

.field private final val$follow:[I

.field private final val$track:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;I[I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Ltwitter4j/TwitterStream$6;->this$0:Ltwitter4j/TwitterStream;

    iput p2, p0, Ltwitter4j/TwitterStream$6;->val$count:I

    iput-object p3, p0, Ltwitter4j/TwitterStream$6;->val$follow:[I

    iput-object p4, p0, Ltwitter4j/TwitterStream$6;->val$track:[Ljava/lang/String;

    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream$StreamHandlingThread;-><init>(Ltwitter4j/TwitterStream;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Ltwitter4j/TwitterStream$6;->this$0:Ltwitter4j/TwitterStream;

    iget v1, p0, Ltwitter4j/TwitterStream$6;->val$count:I

    iget-object v2, p0, Ltwitter4j/TwitterStream$6;->val$follow:[I

    iget-object v3, p0, Ltwitter4j/TwitterStream$6;->val$track:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/TwitterStream;->getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

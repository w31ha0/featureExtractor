.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetEndSession;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "TargetEndSession.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "endSession"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

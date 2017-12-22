.class public Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;
.super Ljava/lang/Object;
.source "NotHandlingActionHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

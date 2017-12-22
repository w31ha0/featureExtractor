.class Lcom/netflix/msl/msg/MslControl$ErrorResult;
.super Ljava/lang/Object;
.source "MslControl.java"


# instance fields
.field public final builder:Lcom/netflix/msl/msg/MessageBuilder;

.field public final msgCtx:Lcom/netflix/msl/msg/MessageContext;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1201
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 1202
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 1203
    return-void
.end method

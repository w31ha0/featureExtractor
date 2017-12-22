.class public Lcom/netflix/msl/msg/MslControl$MslChannel;
.super Ljava/lang/Object;
.source "MslControl.java"


# instance fields
.field public final input:Lcom/netflix/msl/msg/MessageInputStream;

.field public final output:Lcom/netflix/msl/msg/MessageOutputStream;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;

    .line 214
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    .line 215
    return-void
.end method

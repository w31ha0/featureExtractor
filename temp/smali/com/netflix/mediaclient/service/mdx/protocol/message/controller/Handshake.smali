.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/Handshake;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "Handshake.java"


# static fields
.field private static final PROPERTY_contractVersion:Ljava/lang/String; = "contractVersion"

.field private static final contractVersion:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "HANDSHAKE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "contractVersion"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/Handshake;->addAppBodyProperty(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

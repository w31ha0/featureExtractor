.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/DialogResponse;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "DialogResponse.java"


# static fields
.field private static final PROPERTY_data:Ljava/lang/String; = "data"

.field private static final PROPERTY_uid:Ljava/lang/String; = "uid"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "DIALOG_RESPONSE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/DialogResponse;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/DialogResponse;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

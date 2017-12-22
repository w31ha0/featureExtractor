.class public Lcom/netflix/mediaclient/event/nrdp/InitEvent;
.super Lcom/netflix/mediaclient/event/nrdp/BaseNrdpEvent;
.source "InitEvent.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "init"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "init"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/BaseNrdpEvent;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

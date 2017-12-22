.class public Lcom/netflix/mediaclient/service/logging/presentation/SimplePresentationWebCallback;
.super Ljava/lang/Object;
.source "SimplePresentationWebCallback.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventsDelivered(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 10
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "onEventsDelivered: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method

.method public onEventsDeliveryFailed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 15
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "onEventsDeliveryFailed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.class public Lcom/netflix/mediaclient/javabridge/invoke/registration/Ping;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "Ping.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "ping"

.field private static final TARGET:Ljava/lang/String; = "registration"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "registration"

    const-string/jumbo v1, "ping"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

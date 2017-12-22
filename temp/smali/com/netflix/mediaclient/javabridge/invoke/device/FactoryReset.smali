.class public Lcom/netflix/mediaclient/javabridge/invoke/device/FactoryReset;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "FactoryReset.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "factoryReset"

.field private static final TARGET:Ljava/lang/String; = "device"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "device"

    const-string/jumbo v1, "factoryReset"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

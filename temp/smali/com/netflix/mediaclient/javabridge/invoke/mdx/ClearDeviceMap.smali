.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/ClearDeviceMap;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "ClearDeviceMap.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "clearDeviceMap"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "clearDeviceMap"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

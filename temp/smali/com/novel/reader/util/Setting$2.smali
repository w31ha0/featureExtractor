.class final Lcom/novel/reader/util/Setting$2;
.super Ljava/util/HashMap;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/util/Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v0, "SunModeSetting"

    const-string v1, "-1,-16777216"

    invoke-virtual {p0, v0, v1}, Lcom/novel/reader/util/Setting$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "MoonModeSetting"

    const-string v1, "-16777216,-1"

    invoke-virtual {p0, v0, v1}, Lcom/novel/reader/util/Setting$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "ModeSetting"

    const-string v1, "SunModeSetting"

    invoke-virtual {p0, v0, v1}, Lcom/novel/reader/util/Setting$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

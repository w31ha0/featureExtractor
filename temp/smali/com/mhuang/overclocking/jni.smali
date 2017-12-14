.class public Lcom/mhuang/overclocking/jni;
.super Ljava/lang/Object;
.source "jni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "speedup"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fread(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native run(Ljava/lang/String;)I
.end method

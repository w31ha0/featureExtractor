.class public Luk/co/lilhermit/android/core/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "lilhermitCore"

.field private static Loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    sput-boolean v2, Luk/co/lilhermit/android/core/Native;->Loaded:Z

    .line 12
    :try_start_0
    const-string v1, "native"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x1

    sput-boolean v1, Luk/co/lilhermit/android/core/Native;->Loaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 17
    .local v0, "d":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 18
    sput-boolean v2, Luk/co/lilhermit/android/core/Native;->Loaded:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_prop_wrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Luk/co/lilhermit/android/core/Native;->Loaded:Z

    if-nez v1, :cond_0

    .line 25
    const-string v1, "lilhermitCore"

    const-string v2, "Native:get_prop_wrapper - Can\'t run command Native library not loaded!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-static {p0}, Luk/co/lilhermit/android/core/Native;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static native getprop(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native runcmd(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native runcmd_simple(Ljava/lang/String;)I
.end method

.method public static runcmd_wrapper(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v1, "msg"

    const-string v2, "runcmd_wrapper begin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, -0x1

    .line 41
    .local v0, "result":I
    sget-boolean v1, Luk/co/lilhermit/android/core/Native;->Loaded:Z

    if-nez v1, :cond_0

    .line 42
    const-string v1, "lilhermitCore"

    const-string v2, "Native:runcmd_wrapper - Can\'t run command Native library not loaded!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return v0

    .line 45
    :cond_0
    invoke-static {p0, p1}, Luk/co/lilhermit/android/core/Native;->runcmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

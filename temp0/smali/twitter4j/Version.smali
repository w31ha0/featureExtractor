.class public final Ltwitter4j/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "Twitter4J"

.field private static final VERSION:Ljava/lang/String; = "2.1.3-SNAPSHOT(build: e8b3d79cea14c4f8cb20101726d92169b905da0e)"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "2.1.3-SNAPSHOT(build: e8b3d79cea14c4f8cb20101726d92169b905da0e)"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Twitter4J 2.1.3-SNAPSHOT(build: e8b3d79cea14c4f8cb20101726d92169b905da0e)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-void
.end method

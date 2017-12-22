.class public final Lcom/netflix/mediaclient/service/logging/error/CrittercismErrorLoggingImpl;
.super Ljava/lang/Object;
.source "CrittercismErrorLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ErrorLogging;


# static fields
.field private static final NAME:Ljava/lang/String; = "crittercism"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLookupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "crittercism"

    return-object v0
.end method

.method public logHandledException(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public logHandledException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

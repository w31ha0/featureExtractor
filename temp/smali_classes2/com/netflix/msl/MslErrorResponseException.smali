.class public Lcom/netflix/msl/MslErrorResponseException;
.super Ljava/lang/Exception;
.source "MslErrorResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x355b6fdc7f02366aL


# instance fields
.field private final requestCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput-object p3, p0, Lcom/netflix/msl/MslErrorResponseException;->requestCause:Ljava/lang/Throwable;

    .line 42
    return-void
.end method


# virtual methods
.method public getRequestCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/msl/MslErrorResponseException;->requestCause:Ljava/lang/Throwable;

    return-object v0
.end method
